/**

How to load and play video

**/ 

import processing.video.*;

Movie movie;

int vid_w;
int vid_h;

float aspectRatio;

void setup() {
  size(640, 380);
  
  background(0);
  
  // Load and play the video in a loop
  movie = new Movie(this, "../../../../../../oF/assets/fingers.mov");
  movie.loop();
 
}


void movieEvent(Movie m) {
  m.read();
  
  vid_w = m.width;
  vid_h = m.height;
 
  aspectRatio = width / vid_w;
}

void draw() {
  //if (movie.available() == true) {
  //  movie.read(); 
  //}
  image(movie, 0, 0, width, vid_h *aspectRatio);
  
  println(vid_w,vid_h);
}



void mousePressed() {
  movie.jump(random(movie.duration()));
}