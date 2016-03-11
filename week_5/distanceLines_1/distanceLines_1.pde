int num = 50;

Circle c1;

void setup() {
  size(800, 500);
  background(255);
  
  c1 = new Circle();
}


void draw() {
  background(10, 20, 30);
   c1.updateCircle();
}