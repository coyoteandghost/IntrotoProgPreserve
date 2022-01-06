class charaObject{
  
  float y;
  float speedY;
  float speedChange;
  
  charaObject(){   //init
    y = 360;
    speedY = 10;
  }
  
  void moveUp(){  //causes movement upward
  y += -speedY;
  }
  
  void moveDown(){  //causes movement downward
  y += speedY; 
  }
  
  void edgeCollision(){  //if collision w edges of screen, wraps around
    if(y<-120){
      y=720;
    }
    if(y>720){
      y=-120;
    }
  }
  
}
