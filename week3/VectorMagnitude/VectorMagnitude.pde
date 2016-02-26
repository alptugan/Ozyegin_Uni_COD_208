void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  
  mouse.sub(center);

  /* The magnitude (i.e. length) of a vector can be 
   accessed via the mag() function. Here it is used 
   as the width of a rectangle drawn at the top of the window.*/

  float m = mouse.mag();
  fill(0);
  rect(0, 0, m, 10);
  //fill(255,0,0,20);
  //ellipse(width/2,height/2,m,m);
  
  pushMatrix();
  translate(width/2, height/2);

  line(0, 0, mouse.x, mouse.y);
  
  //translate(-width/2, -height/2);
  popMatrix();
  
  rect(0,0,40,40);
}