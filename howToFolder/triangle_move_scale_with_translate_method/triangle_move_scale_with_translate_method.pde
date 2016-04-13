int x1 = 8;
int y1 = 0;
int x2 = 16;
int y2 = 14;
int x3 = 0;
int y3 = 14;


int ellRad = 3;

void setup() {
  
  size(800,400);
  
}

void draw() {
  background(#ECF0F1);
  
  //
  // FIRST DRAW TRIANGLE AT TOP LEFT
  // THEN USE TRANSLATE TO MOVE & SCALE IT
  //
  
  /*stroke(#7F8C8D);
  noFill();
  
  // First draw the perfect triangle to top left
  // for debug purposes put an ellipse at the center of triangle
  triangle(x1,y1,x2,y2,x3,y3);
  
  noStroke();
  fill(#E74C3C);
  
  // find the center of triangle
  int triCenterX = (x2 - x3) / 2;
  int triCenterY = int((y2 - y1) / 1.5);
  ellipse(triCenterX,triCenterY, ellRad,ellRad);
  */
  
  
  //
  // To draw the triangle at the center of the canvas use translate() method to move
  // all points (x1,y1,x2,y2,x3,y3 ) at the same time 
  //
  pushMatrix(); // Store the current canvas coordinate system
  // find the center of triangle
  int triCenterX = (x2 - x3) / 2;
  int triCenterY = int((y2 - y1) / 1.5);
  
  
  translate(width / 2, height / 2);
  // map mouseX value  to keep the output in a fixed range
  float scaleFactor = map(mouseX,0,width,0.1,7);
  scale(scaleFactor,scaleFactor);
  
  //println(PI/(millis()));
  rotate(radians(millis())*0.1);
  stroke(#7F8C8D);
  noFill();
  
  // New translate for centering Triangle
  pushMatrix();
    // Bring it left and up to position to the center
    translate(-triCenterX,-triCenterY);
    triangle(x1,y1,x2,y2,x3,y3);
  popMatrix();
  
  
  noStroke();
  fill(#E74C3C);
  ellipse(0,0, ellRad,ellRad);
  
  
  popMatrix();
}