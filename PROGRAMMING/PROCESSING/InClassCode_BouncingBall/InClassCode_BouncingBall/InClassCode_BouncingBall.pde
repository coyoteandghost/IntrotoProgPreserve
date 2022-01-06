float x; //declared variable x
float y; //declared variable y
float xSpeed; //declare variable xSpeed
float ySpeed; //declare variable ySpeed

//function called once at the start of your program
void setup(){
  size(640, 480); //set window size
  
  println("Hello!"); //say hi!
  
  x=0; //init x
  xSpeed = 8.5; //init xSpeed
  
  y=0; //init y
  ySpeed=8.5; //init ySpeed
}

//function called over and over and over until the program ends
void draw(){
  background(83, 172, 5); //reestablishes bg color so there isn't a trail of ellipses
  
  println("Hello AGAIN!"); //say hi over and over!
  
  ellipse(x, y, 50, 50); //use variable x and y for location
  
  x=x+xSpeed; //creates hori. movement by shifting x over by xSpeed
  y=y+ySpeed; //creates vert. movement by shifting y over by ySpeed
  
  
  if(x > width){ //if x is > the width of window, then...
    xSpeed=xSpeed*-1; //make xSpeed negative/reverse
    x=x+xSpeed; //hori. movement by shifiting x over by xSpeed
  }
  
  
   if(y>height){ //if y is > the height of the window, then...
    ySpeed=ySpeed*-1; //make ySpeed negative/reverse
    y=y+ySpeed; //vert. movement by shifting y over by ySpeed
  }  
  
  
  if(x < 0){ //if x is < 0, then...
    xSpeed = xSpeed * -1; //reverse xSpeed
    x=x+xSpeed; //hori. movement by shifiting x over by xSpeed
  }
  
  
  if(y<0){ //if y is < 0, then...
    ySpeed=ySpeed*-1; //reverse ySpeed
    y=y+ySpeed; //vert. movement by shifting y over by ySpeed
  }
  
  println(x); //print out the value of x
}
