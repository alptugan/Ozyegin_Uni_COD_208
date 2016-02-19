
int choice;
float x;
float y;

void setup() {
  size(1000,400);
  background(255,255,255);
  
  x = width/2;
  y = height/2;
}

void draw() {
  
  //background(20);
  
  choice = int(random(4));
  
  println(choice);
  
  
  if(choice == 0) {
      x = x +1;
  }
  
  if(choice == 1) {
      x = x - 1;
  }
  
  if(choice == 2) {
    y = y + 1; 
  }
  
  if(choice == 3) {
    y = y - 1; 
  }
  
  
  
  //point(x,y);
  //noStroke();
  fill(255,0,0);
  ellipse(x,y,10,10);
}