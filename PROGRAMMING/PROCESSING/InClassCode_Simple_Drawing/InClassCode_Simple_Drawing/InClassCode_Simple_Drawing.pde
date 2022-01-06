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
