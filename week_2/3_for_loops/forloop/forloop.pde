float xpos = 200;
float ypos = 200;
float rad = 100;
float distance = 100;

void setup() {
  
  size(800,400);
  
}


void draw() {
  
  background(#BDC3C7);
  
  //ellipse(mouseX,mouseY,40,40);
  ellipse(xpos,ypos,rad,rad);
  ellipse(xpos + distance,ypos,rad,rad);
  ellipse(xpos + distance*2,ypos,rad,rad);
  ellipse(xpos + distance*3,ypos,rad,rad);
  ellipse(xpos + distance*4,ypos,rad,rad);
  //rect(0,0,40,40);
  
  rad = rad + 0.5;
  
  if(rad > 200) {
      rad = 100;
  }
  
  
  
  
  
  
  
  
  
  
  
  
}