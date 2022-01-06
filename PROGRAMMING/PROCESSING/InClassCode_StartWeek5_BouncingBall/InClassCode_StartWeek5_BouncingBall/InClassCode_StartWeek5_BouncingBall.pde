float[] x;
float[] y;
float[] speedX;
float[] speedY;

void setup(){
  size(1000, 800);
  
  x = new float[500]; //create new space
  y = new float[x.length]; //""
  
  for(int i=0; i < x.length; i++){
     println(i);
     x[i]= width/2;
     y[i]= height/2;
  }
   
  //x[0] = width/2; //init slot 0 of x
  //y[0] = height/2; //init  slot 0 of y
  //x[1] = width/2;
  //y[1] = height/2;
  
  speedX = new float[x.length];
  speedY = new float[x.length];
  
  for(int i  = 0; i < speedX.length; i++){
     speedX[i] = random(-10,10);
     speedY[i] = random(-10,10);
  }
  
  //speedX[0] = random(-10, 10);
  //speedY[0] = random(-10, 10);
}

void draw(){

  fill(0, 0, 255);
  
  for(int i=0; i<x.length; i++){
    ellipse(x[i], y[i], 20, 20);
    
    x[i] += speedX[i];
    y[i] += speedY[i];
  
    if(x[i] > width || x[i] < 0){
      speedX[0] = -speedX[0];
    }
    
    if(y[i] > height || y[i] < 0){
      speedY[i] = speedY[i] * -1;
    }
  }
}
