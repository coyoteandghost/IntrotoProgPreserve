color currentColor; //declared currentColor variable


//once @ beginning
void setup(){
  size(640,480); //set window size
  background(0,0,0); //init bg as black
  
  currentColor=color(255,0,0); //init currentColor to red
}

//called over and over
void draw(){
  noStroke(); //no stroke on shapes
  if(mousePressed){
    fill(currentColor); //set fill of shape to currentColor
    ellipse(mouseX,mouseY,50,50); //make ellipse at mouse position
  }
}

//when key is pressed
void keyPressed(){
  println("A key was pressed: " + key); //prints key press message + which key   
  if(key=='b'){ //if b is pressed
    currentColor=color(0,0,255); // set currentColor to blue
  } 
  
  else if(key=='p'){ //if p is pressed
    currentColor=color(255,0,255); //set currentColor to purple
  }
  
  else if(key=='g'){ //if g is pressed
    currentColor=color(0,255,0); //set currentColor to green
  }
  
  else if(key=='y'){ //if y is pressed
    currentColor=color(255,255,0); //set currentColor to yellow
  }
    
  else if(key=='r'){ //if r is pressed
    currentColor=color(255,0,0); //set currentColor to red
  }
  
  else if(key==' '){ //if space is pressed
    background(0,0,0); //set bg to black/reset bg
  }    
}
