/**

How to load and play video

**/ 

import processing.video.*;

Movie movie;

int vid_w;
int vid_h;

float aspectRatio;
float mPosition;

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
  if (movie.available() == true) {
    movie.read(); 
  }
  image(movie, 0, 0, width, vid_h * aspectRatio);
  
  
   mPosition= map(mouseX,0,width,0,movie.duration());
  
   if(mouseX - pmouseX != 0) {
       movie.jump(mPosition);
   }
  //println(vid_w,vid_h);
}

void mouseMoved() {
  
  //println(mPosition);
  
}

void mousePressed() {
  movie.jump(random(movie.duration()));
}