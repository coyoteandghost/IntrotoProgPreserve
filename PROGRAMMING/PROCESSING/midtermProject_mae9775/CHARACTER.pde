class charaObject{
  
  float y;
  float speedY;
  float speedChange;
  
  charaObject(){
    y = 360;
    speedY = 8;
  }
  
  void moveUp(){
  y += -speedY;
  }
  
  void moveDown(){
  y += speedY; 
  }
  
  void edgeCollision(){
    if(y<-120){
      y=720;
    }
    if(y>720){
      y=-120;
    }
  }
}
