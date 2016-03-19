int num = 50;

PVector pos;
PVector velocity;
int radius;

void setup() {
  size(800, 500);
  background(255);


  radius = 3;
  pos = new PVector(random(width), random(height));
  velocity = new PVector(random(3) - 1, random(3) - 1);
}


void draw() {
  background(10, 20, 30);

  noStroke();
  fill(120, 254, 207);
  ellipse(pos.x, pos.y, radius, radius);

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
}