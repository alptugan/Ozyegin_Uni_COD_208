Walker object;
ArrayList<Walker> objects = new ArrayList<Walker>();

void setup() {
  size(800,400);
  background(255,255,255);
  
  for(int i = 0; i < 8; i++) {
    Walker obj = new Walker(100 + random(width-100),100 + random(height-100));
    objects.add(obj);
    
    objects.get(i).chance1 = random(0.3);
    objects.get(i).chance2 = 0.3 + random(0.6);
    objects.get(i).chance3 = 0.6 + random(0.4);
    objects.get(i).type = "ellipse";
  }
  
  object = new Walker(100,300);
  object.chance1 = 0.5;
  object.chance2 = 0.8;
  object.chance3 = 0.9;
  object.type = "kare";
  
}

void draw() {
  //background(30);
  for(int i = 0; i < objects.size(); i++) {
    objects.get(i).drive();
  }
}