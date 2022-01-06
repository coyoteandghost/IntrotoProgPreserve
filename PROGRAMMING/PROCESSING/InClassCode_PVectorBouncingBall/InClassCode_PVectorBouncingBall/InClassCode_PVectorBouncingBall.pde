PVector pos;  //declare PVectors, each has a float x,y inside of it

PVector speed;

void setup(){
  size(640, 480);
  pos = new PVector(); //create space for a new PVector
  pos.x = 200;  //init value in x
  pos.y = 350;   //init value in y
  
  speed = new PVector(5, 2.8); //create space and insert values into x and y using a "constructor"
}

void draw(){
  //clear background
  background(255);
  
  //draw circle
  noStroke();
  fill(0);
  ellipse(pos.x, pos.y, 20, 20);
  
  //movement
  pos.add(speed);  //use the "add" function inside PVector to add the speed values to pos
  
  if(pos.x > width || pos.x < 0){  //if we hit the left OR the right
    speed.x *= -1;  //reverse x speed
  }
  
  if(pos.y > height || pos.y < 0){  //if we hit the top OR the bottom
    speed.y = -speed.y;  //reverse y speed
  }
}
