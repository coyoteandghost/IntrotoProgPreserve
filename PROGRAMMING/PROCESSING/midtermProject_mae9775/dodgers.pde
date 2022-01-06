class rocketObject{
  
 float x;
 float y;
 float speedX;
   
 rocketObject(float _x, float _y, int chng){
 x = _x;
 y = _y;
 speedX = chng++;
 } 
   
 void display(){
   x = x + speedX;
   image(Rocket, x, y);
 }
 
 void reset(){
   if(x < -60);
     x = 730;
     y = random(20, 700);
 }
}
