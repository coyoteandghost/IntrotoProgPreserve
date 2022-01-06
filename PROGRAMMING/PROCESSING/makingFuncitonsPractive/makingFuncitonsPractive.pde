int buttonX;
int buttonY;
int buttonW;
int buttonH;

void setup(){
  size(1080,480);
  buttonX=600;
  buttonY=200;
  buttonW=21;
  buttonH=50;
}

void draw(){
  drawCar(500,50);
  drawCar(600,10);
  
  if(mouseOver(buttonX,buttonY,buttonW,buttonH)) {
    fill(255,0,0);
  } else {
    fill(0,255,0);
  }
  rect(buttonX,buttonY,buttonW,buttonH);
  
}

void drawCar(float x, float y){
  fill(255,0,0);
  rect(x,y,500,100);
  fill(255,255,0);
  ellipse(x,y+40,50,50);
  ellipse(x+40,y+40,50,50);
}


boolean mouseOver(float x, float y, float w, float h){
  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h){
     return true;
  } else { 
    return false;
  }
}

void rect(float x, float y, float w, float h){
  //does whatever code to draw a rect
}
