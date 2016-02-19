float xstep;
float ystep;

float cx,cy;

void setup() {
  
  size(400,400);
  
  cx = width *0.5;
  cy = height * 0.5;
}


void draw() {

  float r = random(1);

  if (r < 0.01) { // A 1% chance of taking a large step
    xstep = random(-100, 100);
    ystep = random(-100, 100);
  } else {
    xstep = random(-1, 1);
    ystep = random(-1, 1);
  }
  
  println(montecarlo());
  
  point(cx+(xstep+1),cy+ystep+1);
}

float montecarlo() {

  while (true) { //We do this “forever” until we find a qualifying random value.

    float r1 = random(1); //Pick a random value.

    float probability = r1; //Assign a probability.

    float r2 = random(1); //Pick a second random value.
 

    if (r2 < probability) { //Does it qualify? If so, we’re done!
      return r1; 
    }
  }
}