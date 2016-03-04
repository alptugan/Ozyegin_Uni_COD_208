Walker object;

void setup() {
  size(800,400);
  background(255,255,255);
  
  object = new Walker(100,300);
  object.chance1 = 0.5;
  object.chance2 = 0.8;
  object.chance3 = 0.9;
  object.type = "kare";
  
}

void draw() {
  //background(30);
  object.drive();
}