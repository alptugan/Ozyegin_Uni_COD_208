void setup() {
  size(400,400);
  
}




void draw() {
  background(0);
  
  //
  /*
for (int x = 0; x < width; x++) {
  for (int y = 0; y < height; y++) {
    
//A random brightness!
  //  float bright = random(255);
     float bright = map(noise(x,y),0,1,0,255);
    pixels[x+y*width] = color(bright);
  }
}

  */
  loadPixels();
  float xoff = 0.0;
 
for (int x = 0; x < width; x++) {
//For every xoff, start yoff at 0.
  float yoff = 0.0;
 
  for (int y = 0; y < height; y++) {
//Use xoff and yoff for noise().
    float bright = map(noise(xoff,yoff),0,1,0,255);
//Use x and y for pixel location.
    pixels[x+y*width] = color(bright);
//Increment yoff.
    yoff += 0.01;
  }
//Increment xoff.
  xoff += 0.01;
}
  
  updatePixels();
}