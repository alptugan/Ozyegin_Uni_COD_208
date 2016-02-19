float t;

void setup() {
  size(800,400);
}

void draw() {
  background(255);
  
  float n = noise(t);
//Using map() to customize the range of Perlin noise
  float x = map(n,0,1,0,width);
  ellipse(x,180,16,16);
 
  t += 0.01;
}