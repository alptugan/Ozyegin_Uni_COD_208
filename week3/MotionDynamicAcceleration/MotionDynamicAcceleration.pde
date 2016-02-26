 PVector location;
 
void setup() {
  size(640,360);
 location = new PVector(200,200);
}
 
void draw() {
  background(255);
  PVector mouse = new PVector(mouseX,mouseY);
  // Look! We’re using the static reference to sub() 
  // because we want a new PVector pointing from one point to another.
  PVector dir = PVector.sub(mouse,location);
  
  ellipse(location.x,location.y,3,3);
  dir.normalize();
  println(dir);
}
 