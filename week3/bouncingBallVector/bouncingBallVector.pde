/*float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;


void setup() {
  size(640,360);
  background(255);
}

void draw() {
  background(255);
 
//Move the ball according to its speed.
  x = x + xspeed;
  y = y + yspeed;
 
//Check for bouncing.
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
 
  stroke(0);
  fill(175);
//Display the ball at the location (x,y).
  ellipse(x,y,16,16);
}

// Location x and y
// Speed xspeed and yspeed

// with vectors we can add few more variables
// Acceleration : xacceleration and yacceleration
// Target location : xtarget and ytarget
// Wind : xwind and ywind
// Friction : xfriction and yfriction

*/
PVector location;
PVector velocity;
 
void setup() {
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
}
 
void draw() {
  background(255);
 
  location.add(velocity);
  
  location.x = location.x + velocity.x;
//We still sometimes need to refer to the individual components of a PVector and can do so using the dot syntax: location.x, velocity.y, etc.
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
 
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}


// Assignment
// Rewrite random movement assignment with Vectors