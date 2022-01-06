float[] x;
float[] y;

float[] speedX;
float[] speedY;

float[] r;
float[] g;
float[] b;

float[] w;
float[] h;


void setup(){
  size(1000, 800);
  
  x = new float[500]; //create new space
  y = new float[x.length]; //""
  
  for(int i=0; i < x.length; i++){
     println(i);
     x[i]= width/2;
     y[i]= height/2;
  }
   
  speedX = new float[x.length]; //create space
  speedY = new float[x.length]; //""
  
  for(int i  = 0; i < speedX.length; i++){
     speedX[i] = random(-10,10);
     speedY[i] = random(-10,10);
  }
  
  r = new float[x.length]; //create space
  b = new float[x.length];
  g = new float[x.length];
  
  for(int c = 0; c < r.length; c++){
    r[c] = random(0,255);   // lines 40-42 random r g or b value between 0 and 255
    b[c] = random(0,255);
    g[c] = random(0,255);
  }
  
  w = new float[x.length];
  h = new float[x.length];
  
  for(int i = 0; i < x.length; i++){
    w[i] = random(20,60);
    h[i] = random(20,60);
  }
 
}

void draw(){
  
  noStroke();
  
  for(int i=0; i<x.length; i++){
    fill(r[i], g[i], b[i]);
    
    ellipse(x[i], y[i], w[i], h[i]);
    
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
