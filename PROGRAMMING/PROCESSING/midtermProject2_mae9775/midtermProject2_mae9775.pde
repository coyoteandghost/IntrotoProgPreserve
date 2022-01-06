//---------------------------------global variables
int gameScreen = 0;

PImage startButton;
PImage background;
PImage keys;
PImage titlehead;
PImage cloudLeft;
PImage cloudRight;
PImage Chara;
PImage Rocket;
PImage gameover;

float[] starsX;
float[] starsY;

PFont timerFont;
int time = 0;
int timePassed = 0;

int interval = 1;
int timeCheck = 0;

charaObject player;
rocketObject rocket1;
rocketObject rocket2;

PVector bounce;
PVector bounceSpeed;

float laser;
float laserSpeed;

//----------------------------------set up
void setup(){
  size(720,720); 
 
  background = loadImage("BG.png");      // loading pictures
  startButton = loadImage("STARTBUTTON.png");
  keys = loadImage("keys.png");
  titlehead = loadImage("highflierTITLE.png");
  cloudLeft = loadImage("CLOUDLEFT.png");
  cloudRight = loadImage("CLOUDRIGHT.png");
  Chara = loadImage("hfChara.png");
  Rocket = loadImage("rocket.png");
  gameover = loadImage("highflierEND.png");
  
  starsX = new float[100];  //arrays for level screen star bg
  starsY = new float[starsX.length];
  for(int i = 0; i < starsX.length; i++){
    starsX[i] = random(0, 720);
    starsY[i] = random(0, 720);
  }
  
  timerFont = loadFont("timerFont.vlw");   //font for timer/score text
  textFont(timerFont);
  timePassed = millis()/1000;  //time since start of program in seconds
  
  player = new charaObject(); 
  rocket1 = new rocketObject(240, 6);
  rocket2 = new rocketObject(480, 8);
  
  bounce = new PVector(0, 5, 300); //for movement on title screen
  bounceSpeed = new PVector(0.5, 0.2, 0.3);
  
}


//---------------------------draw one of screens based on # of gameScreen
void draw(){
  if(gameScreen == 0){ //if 0, show title
    titleScreen();
  } 
  else if (gameScreen == 1){  //if 1, show level screen
    levelScreen();
  } 
  else if (gameScreen == 2){ //if 2, show end screen
    endScreen();
  }
}

//------------------------------title screen
void titleScreen(){
  image(background, 0, 0);
  image(startButton, 0, -25);
  image(keys, 0, -15);
  
  image(cloudRight, 0, bounce.y);
  bounce.y += bounceSpeed.y;   //vertical movement of cloud on right
 
  image(cloudLeft, 0, bounce.x);
  bounce.x += bounceSpeed.x;  //vertical movement of cloud on left
  
  image(Chara, 420, bounce.z);
  bounce.z += bounceSpeed.z;  //vertical movement of girl
  
  image(titlehead, 0, 30);
  
  if(bounce.x>20 || bounce.y>20 || bounce.z>320){  //bounds placed on each vertical movement
      bounceSpeed.x *= -1;
      bounceSpeed.y *= -1;
      bounceSpeed.z *= -1;
    }
    if(bounce.x<0 || bounce.y<0 || bounce.z<300){
      bounceSpeed.x *= -1;
      bounceSpeed.y *= -1;
      bounceSpeed.z *= -1;
    }
  
  if(keyPressed == true && key == ENTER){  //go to level when enter is pressed
    gameScreen += 1;
    timePassed = millis()/1000; //makes sure timer is reset to 0 when level starts/ enter is pressed
  }
}


//-------------------------------level screen
void levelScreen(){
  noStroke();
  image(background, 0, 0);
  for(int i=0; i < starsX.length; i++){ //create star bg at random
    rect(starsX[i], starsY[i], 5, 5);
  }
  
    rocket1.display(); //spawn in rocket 1
    rocket2.display(); //spawn in rocket 2
   
    time = (millis()/1000) - timePassed; //displays timer/score
    text("TIME:", 20, 45);
    text(time, 150, 45);

  image(Chara, 50, player.y);  //move chara up + down
    if(keyPressed == true && key == 'w'){
      player.moveUp();
    }
    if(keyPressed == true && key == 's'){ 
      player.moveDown();
    }
    
    player.edgeCollision(); //makes chara cycle through edges    
    
    if(rocket1.x < 220 && rocket1.x >50 && rocket1.y > player.y && rocket1.y < player.y+90){ //collisions w chara cause game over
      gameScreen += 1;
    } 
    if(rocket2.x < 220 && rocket2.x > 50 && rocket2.y > player.y && rocket2.y < player.y+90){ 
      gameScreen += 1;
    }
}

//-------------------------- end screen
void endScreen(){
  image(background, 0, 0);
  image(gameover, 0, 0);
  text(time, 330, height/2); //display final score
  
  if(keyPressed == true && key == ENTER){  //go to level when enter is pressed
    gameScreen = 1;
    rocket1.x = 740; //reset rocket state to initial x positions
    rocket2.x = 740;
    rocket1.speedX = 6;
    rocket2.speedX = 8;
    timePassed = millis()/1000; //makes sure timer is reset to 0 when level starts/ enter is pressed
  }
}
