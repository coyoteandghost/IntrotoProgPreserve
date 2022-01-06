float x;
float y;

float speed;

float xSpeed;
float ySpeed;

void setup(){
  size(640,480);
  x = width/2;
  y = height/2;
  
  speed = 5;
  
  xSpeed = 0;
  ySpeed = 0;
}

void draw(){
  background(0);
  
  circle(x, y, 50);
  x += xSpeed;
  y += ySpeed;
}

void keyPressed(){
  if(key == 'a'){
    xSpeed = -speed;
    ySpeed = 0;
  }
  if(key == 'd'){
    xSpeed = speed;
    ySpeed = 0;
  }
  if(key == 'w'){
    xSpeed = 0;
    ySpeed = -speed;
  }
  if(key == 's'){
    xSpeed = 0;
    ySpeed = speed;
  }
  
  if(key == ' '){
    xSpeed = 0;
    ySpeed = 0;
  }
}
