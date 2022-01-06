float x; //declared variable "x"; int=integer, whole #. float=decimal
float y; //declared "y"
float speedx; //declared "speedx"
float speedy; //declared "speedy"

//called once at start of program
void setup(){
  size(640,480);
  println("Hello!");
   x=0; //initalize x
   y=0; //initialize y
   speedx=7; //init speedx
   speedy=7; //init speedy
}

//called over and over until program ends
void draw(){
  background(250, 20, 50);
  println("Hello again!");
  ellipse(x,y,50,50); //used x+y
  x=x+speedx; //x changes over time
  y=y+speedy; //y changes over time
  
  if(x>width){
  speedx=speedx*-1;
  }
  
   if(y>height){
   speedy=speedy*-1;
  }
  
  if(x<0){
   speedx=speedx*-1;
  }
  
  if(y<0){
   speedy=speedy*-1;
  }
 
 
}
