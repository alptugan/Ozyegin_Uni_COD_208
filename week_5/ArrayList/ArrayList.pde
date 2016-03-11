ArrayList<Walker> particles = new ArrayList<Walker>();
ArrayList<String> particle


int particleNum = 30;

void setup() {
  size(800,400);
  background(255,255,255);
  
  //float startX,float startY, String _type, color _shapeColor

    for(int i = 0; i < particleNum; i = i + 1) {
    particles.add(new Walker(random(width),random(height),"ellipse",#E74C3C));
  }
  
}

void draw() {
  //background(30);
   for(int i = 0; i < particleNum; i = i + 1) {
    particles.get(i).draw();
  }
  
  particles.get(29).radiusEllipse = 40;
  particles.get(29).shapeColor = #27AE60;
}