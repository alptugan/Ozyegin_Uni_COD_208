float xstep;
float ystep;

float cx,cy,x,y,px,py;

void setup() {
  
  size(400,400);
  
  cx = width *0.5;
  cy = height * 0.5;
  
  x = cx;
  y = cy;
}


void draw() {

  float r = random(1);

  if (r < 0.01) { // A 1% chance of taking a large step
    xstep = random(-100, 100);
    ystep = random(-100, 100);
  } else {
    xstep = random(-1, 1);
    ystep = random(-1, 1);
  }
  
   float stepsize = random(0,10);
 
  float stepx = random(-stepsize,stepsize);
  float stepy = random(-stepsize,stepsize);
  
  px = x;
  py = y;
  x += stepx;
  y += stepy;
  
  point(cx+x,cy+y);
  line(px,py,x,y);
}