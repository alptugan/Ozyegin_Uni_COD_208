
class Circle {
  PVector pos;
  PVector velocity;
  
  int radius;
  
  Circle() {
    radius = 3;
    pos = new PVector(random(width),random(height));
    velocity = new PVector(random(3) - 1,random(3) - 1);
  }
   
  void drawCircle() {
    noStroke();
    fill(120, 254, 207);
    ellipse(pos.x, pos.y, radius, radius);
  }
   
  void updateCircle() {
    pos.x += velocity.x;
    pos.y += velocity.y;
     
    if (pos.x > (width + radius)) {
      pos.x = 0 -radius;
    }
     
    if (pos.x < (0 - radius)) {
      pos.x = width + radius;
    }
     
    if (pos.y > (height + radius)) {
      pos.y = 0 - radius;
    }
     
    if (pos.y < (0 - radius)) {
      pos.y = height + radius;
    }
  
    drawCircle();
  }
}