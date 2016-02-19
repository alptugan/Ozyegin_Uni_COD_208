float xpos = 200;
float ypos = 200;
float rad = 3;
float distance = 6;

float moveFac;

void setup() {
  
  size(800,400);
  
}


void draw() {
  
  background(#BDC3C7);

  for(int i = 0; i < 100; i = i + 1) {
    //println(i);
    //xpos = xpos + distance
    
    moveFac = distance * i;
    
    ellipse(xpos + moveFac,ypos,rad,rad);
  }


  
}