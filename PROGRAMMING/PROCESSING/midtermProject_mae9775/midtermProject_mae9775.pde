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

PFont timerFont;
int time = 0;
int timePassed = 0;

int interval = 1;
int timeCheck = 0;

charaObject player;
rocketObject enemy;
//laser pew;

PVector bounce;
PVector bounceSpeed;

float laser;
float laserSpeed;

//----------------------------------set up
void setup(){
  size(720,720); 
 
  background = loadImage("BG.png");    
  startButton = loadImage("STARTBUTTON.png");
  keys = loadImage("keys.png");
  titlehead = loadImage("highflierTITLE.png");
  cloudLeft = loadImage("CLOUDLEFT.png");
  cloudRight = loadImage("CLOUDRIGHT.png");
  Chara = loadImage("hfChara.png");
  Rocket = loadImage("rocket.png");
  
  timerFont = loadFont("timerFont.vlw");  
  textFont(timerFont);
  timePassed = millis()/1000;  //time since start of program
  
  player = new charaObject();
  enemy = new rocketObject(730, random(20,700), 5);
  //pew = new laser();
  
  bounce = new PVector(0, 5, 300);
  bounceSpeed = new PVector(0.5, 0.2, 0.3);
  
}


//---------------------------draw one of screens based on # of gameScreen
void draw(){
  if(gameScreen == 0){
    titleScreen();
  } 
  else if (gameScreen == 1){  
    levelScreen();
  } 
  else if (gameScreen == 2){
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
  image(background, 0, 0);
  
    enemy.display();
    enemy.reset();
    
    time = (millis()/1000) - timePassed; //displays timer/score
    text("SCORE:", 500, 45);
    text(time, 660, 45);

  image(Chara, 50, player.y);  //move chara up + down
    if(keyPressed == true && key == 'w'){
      player.moveUp();
    }
    if(keyPressed == true && key == 's'){ 
      player.moveDown();
    }
    
    player.edgeCollision(); //makes chara cycle through edges    
}

//void keyPressed(){
//  if(key == ' ');
//      pew.shoot();
//      pew.update();
//    }

//-------------------------- end screen
void endScreen(){
  image(background, 0, 0);
  
}
  
//---------------------------------------cloud animation on title
