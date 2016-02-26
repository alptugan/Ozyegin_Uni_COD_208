void setup() {
  size(600,400);  
}

void draw() {
  background(255);
 
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  mouse.sub(center);
 
  // In this example, after the vector is normalized, 
  // it is multiplied by 50 so that it is viewable onscreen. 
  // Note that no matter where the mouse is, the vector will 
  // have the same length (50) due to the normalization process.
  
  mouse.normalize();
  
  /*mouse.x = map(mouse.x,0,width,0,1);
  mouse.y = map(mouse.y,0,height,0,1);*/
  
  mouse.mult(150);
  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);
 
}