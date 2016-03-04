/*
As an exercise, from this point forward, let’s make a rule for ourselves. 
Let’s write every example in the rest of this book without ever touching 
the value of velocity and location (except to initialize them). 
In other words, our goal now for programming motion is: 
Come up with an algorithm for how we calculate acceleration and 
let the trickle-down effect work its magic. 
(In truth, you’ll find reasons to break this rule, 
but it’s important to illustrate the principles behind our motion algorithm.) 
And so we need to come up with some ways to calculate acceleration:*/

// Constant Algorithm
class Mover {
 
  PVector location;
  PVector velocity;
//Acceleration is the key!
  PVector acceleration;
//The variable topspeed will limit the magnitude of velocity.
  float topspeed;
 
  Mover() {
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001,0.01);
    topspeed = 10;
  }
 
  void update() {
//Velocity changes by acceleration and is limited by topspeed.
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
 
//display() is the same.
  void display() {}
//checkEdges() is the same.
  void checkEdges() {}
}