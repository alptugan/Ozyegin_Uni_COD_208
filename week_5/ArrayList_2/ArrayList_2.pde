ArrayList<Walker> particles = new ArrayList<Walker>();
ArrayList<String> particleTypes = new ArrayList<String>();
ArrayList<Colors> particleColors = new ArrayList<Colors>();

int particleNum = 300;
int typeId;


void setup() {
  size(800, 400);
  background(255, 255, 255);

  //float startX,float startY, String _type, color _shapeColor
  
  particleColors.add(new Colors(#ff0000));
  
  particleTypes.add("ellipse");
  particleTypes.add("rectangle");
  particleTypes.add("triangle");

  

  for (int i = 0; i < particleNum; i = i + 1) {

    typeId = floor(random(particleTypes.size()));
    particles.add(new Walker(random(width), random(height), particleTypes.get(typeId), #E74C3C));
  }
}

void draw() {
  //background(30);
  for (int i = 0; i < particleNum; i = i + 1) {
    particles.get(i).draw();
  }

  particles.get(29).radiusEllipse = 40;
  particles.get(29).shapeColor = #27AE60;
}