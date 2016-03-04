 PVector location;
 PVector acc;
 PVector velocity;
 float topspeed;
 
void setup() {
  size(640,360);
  topspeed = 4;
 location = new PVector(200,200);
 velocity = new PVector(0,0);
}
 
void draw() {
  background(255);
  PVector mouse = new PVector(mouseX,mouseY);
  // Look! We’re using the static reference to sub() 
  // because we want a new PVector pointing from one point to another.
  PVector dir = PVector.sub(mouse,location);
  dir.normalize();
  dir.mult(0.5);
  
  acc = dir;
  velocity.add(acc);
  velocity.limit(topspeed);
  location.add(velocity);
  
  ellipse(location.x,location.y,30,30);
  
  println(dir);
}
 