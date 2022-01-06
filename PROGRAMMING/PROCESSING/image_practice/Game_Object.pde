class GameObject{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  
  PImage img;
  
    GameObject(){ //default constructor
    println("you used the default! yahoo!");
    x = 0;
    y = 0;
    xSpeed = 0;
    ySpeed = 0;
    
    img = loadImage("gle.png");
  }
  
  GameObject(float _x, float _y, float _xSpeed, float _ySpeed, String imgString){
   x = _x;
   y = _y;
   xSpeed = _xSpeed;
   ySpeed = _ySpeed;
   img = loadImage(imgString);
  }
  
  void update(){
    x += xSpeed;
    y += ySpeed;
  
  if(x < 0 || x > width){
    xSpeed *= -1;
    }
  
  if(y<0 || y>height){
    ySpeed *= -1;
    }
  }
  
  void display(){
    image(img,x,y);
    //circle(x,y,10);
  }
  
  
}
