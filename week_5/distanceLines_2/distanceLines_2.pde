int num = 50;

Circle c1;
ArrayList<Circle> particles = new ArrayList<Circle>();



void setup() {
  size(800, 500);
  background(255);
  
  
  
  for(int i = 0; i < num; i++) {
    c1 = new Circle();
    particles.add(c1);
  }
}


void draw() {
  background(10, 20, 30);
  
   
   
   for(int i = 0; i < num; i++) {
  
     particles.get(i).updateCircle();
  }
}