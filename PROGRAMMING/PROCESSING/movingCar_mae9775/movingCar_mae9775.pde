float pointredX;
float pointblueX; 
float pointyellowX;
float pointY;
float speedX;

void setup()
{
  size(1080,480);
  
  println("vroom vroom");
  
  pointredX=200;//init pointredX
  pointblueX=-200; //init pointblueX
  pointyellowX=-600; //init pointyellowX
  pointY=210;//init pointY
  speedX=7; //init speedX
}

void draw()
{
  background(#90D3E5); //sky blue
  
  noStroke();
  
  fill(#577E5E); //grass color
  rect(0,240,1080,400); //grass
  
  fill(#A39EA5); //road color
  rect(0,280,1080,130); //road
  
  drawCar(pointredX,pointY,#E02D48); //car @ pointX,pointY
  pointredX=pointredX+speedX; //hori movement
  
  if(collision(1080, pointredX)) //if pointredX>1080, then set back pointredX=-300
  {
    pointredX=-300;
  }
  
  drawCar(pointblueX,pointY,#115890); //car @ pointblueX,pointY
  pointblueX=pointblueX+speedX; //hori movement
  
  if(collision(1080,pointblueX)) //if pointblueX>1080, then set back pointblueX=-300
  {
    pointblueX=-300;
  }
  
  drawCar(pointyellowX,pointY,#FFE06F);
  pointyellowX=pointyellowX+speedX; //hori movement
  
  if(collision(1080,pointyellowX)) //if pointyellowX>1080, then set back pointyellowX=-300
  {
    pointyellowX=-300;
  }
  
  
  
}

boolean collision(float x, float point)
{
  if(point>x){  //if point is greater than x, true
    return true;
  } 
  else 
  {
    return false;
  }
}

  
  
void drawCar(float x, float y, color base)
{
  fill(base); //for car base
  rect(x,y,300,100); //car base
  rect(x+30,y-60,150,60); //top of car
  
  fill(#2C1B34); //grey for tires
  ellipse(x+50,y+100,70,70); //left tire
  ellipse(x+250,y+100,70,70); //right tire
  
  fill(#DEE1E3); //rims
  ellipse(x+50,y+100,40,40);
  ellipse(x+250,y+100,40,40);
  
  fill(#EBF2EF); //glass color
  rect(x+90,y-50,80,50); //window
  rect(x+280,y+10,20,30); //headlight
  rect(x+10,y+10,20,10); //rearlight
}
