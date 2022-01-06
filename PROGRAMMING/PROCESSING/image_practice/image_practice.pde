//PImage img; //new var of class type "PImage" w name "img"
GameObject go;

void setup(){
  size(640,480);
  
  go = new GameObject(100, 100, 10, 10, "gle.png");
  
  //img = loadImage("gle.png");
  
}

void draw(){
  background(0);
  
  //image(img, go.x, go.y, 100, 100);
 
  go.update();
  go.display();
}
