class rocketObject{
  
 float x;
 float y;
 float speedX;
   
 rocketObject(float _y, float _speedX){  //init
   x = 740;
   y = _y;
   speedX = _speedX;
 } 
   
 void display(){   
   x = x - speedX;   //horizontal movement of rocket
   image(Rocket, x, y);
   
   if(x < -140){ // sends rocket back to right side of screen
      x = 740; 
      y = random(40, 680); //random y placement
      speedX = speedX + 1; //increase speed of rocket each time it spawns in
      x = x - speedX;
   }
   
   if(speedX > 23){ //resets speed when it gets too fast and then starts building speed again; cycles
     speedX = 9;
   }
 }

}
