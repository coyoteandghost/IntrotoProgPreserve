class laser{
  PVector laser;
  float laserSpeed;

laser(){
  laser = new PVector(60, player.y-10);
  laserSpeed = 50;
}

void shoot(){
  laser.x = laser.x+laserSpeed;
  rect(laser.x, laser.y, 30, 5);
}

void update(){
  laser.x += laserSpeed;
  }
}
