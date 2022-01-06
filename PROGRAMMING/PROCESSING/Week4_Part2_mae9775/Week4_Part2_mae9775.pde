//float x;
//float y;

float speed;

//float xSpeed;
//float ySpeed;

PVector move; //declare move
PVector speedXY; //declare speedXY

void setup(){ 
  size(640,480); 
  move = new PVector(width/2 , height/2); //initialize move
  speedXY = new PVector(0,0); //initialize speedXY
  
  //x = width/2;
  //y = height/2;
  
  speed = 5;
  
  //xSpeed = 0;
  //ySpeed = 0;
}

void draw(){
  background(0); //bg black
  
  circle(move.x, move.y, 50); //circle w. move as x and y
  //x += xSpeed;
  //y += ySpeed;
  
  move.add(speedXY); //move=move+speedXY
  
}

void keyPressed(){
  if(key == 'a'){
    speedXY.x = -speed; //move left
    speedXY.y = 0;
  }
  if(key == 'd'){
    speedXY.x = speed; //move right
    speedXY.y = 0;
  }
  if(key == 'w'){
    speedXY.x = 0; //move up
    speedXY.y = -speed;
  }
  if(key == 's'){
    speedXY.x = 0;
    speedXY.y = speed; //move down
  }
  
  if(key == ' '){ //stop all movement
    speedXY.x = 0;
    speedXY.y = 0;
  }
}
