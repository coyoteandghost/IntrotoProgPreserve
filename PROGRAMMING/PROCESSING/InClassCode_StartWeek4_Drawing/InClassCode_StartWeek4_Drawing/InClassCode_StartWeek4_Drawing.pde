/*
This is a simple drawing program
*/

color currentColor;  //declared currentColor

//Once at the beginning
void setup() {
  size(640, 480); //set window size
  background(0, 0, 0);  //init background to black
  
  currentColor = color(255, 0, 0); //init currentColor to red
}

//On an on until the break of dawn...and then on some more
void draw() {
  noStroke(); //turn off the stroke around shapes
  
  if(mousePressed){  //if the mouse is pressed
    fill(currentColor);  //set the fill to currentColor
    ellipse(mouseX, mouseY, 50, 50);  //draw an ellipse at the mouse position
  }
  
  //clear bg
  fill(125,125,125);
  rect(0,0,20,20);
  if(mouseOver(0,0,20,20)){
    background(0,0,0);
  }

colorButton(20,255,0,0);
colorButton(40,0,255,0);
colorButton(60,0,0,255);
colorButton(80,255,255,0);
colorButton(100,0,255,255);
colorButton(120,200,40,0);
colorButton(140,200,0,200);



}

//called when a key is pressed
void keyPressed(){
  println("A key was pressed: " + key); //print out the key pressed
  
  if(key == 'b'){  //if a 'b' was pressed
    currentColor = color(0, 0, 255);  //set currentColor to blue
  } else if(key == 'g'){  //if 'g' was pressed
    currentColor = color(0, 255, 0);  //set the currentColor to green
  } else if(key == ' '){  //if the spacebar was pressed
    background(0, 0, 0);  //reset the background
  }
}

/*  This is a function we wrote!
*  It only gets called when WE call it.
*  It checks to see if the mouse is over a rectangle
*/
boolean mouseOver(float x, float y, float w, float h){
  if(mouseX > x && mouseX < x + w && 
      mouseY > y && mouseY < y + h){  //if the mouse is inside the rectangle described by x, y, w, h
        return true;  //return true
      } else {  //otherwise
        return false;  //return false
      }    
}

void colorButton (float x, float r, float g, float b){
  fill(r,g,b);
  rect(x,0,20,20);
  if(mouseOver(x,0,20,20)){
    currentColor=color(r,g,b);
    }
  }
