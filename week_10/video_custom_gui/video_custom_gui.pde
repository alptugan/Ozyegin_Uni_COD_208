/**
 
 How to load and play video
 GUI
 **/

import processing.video.*;

Movie movie;

int vid_w;
int vid_h;

float aspectRatio;
float mPosition;

float scrollBarH = 5; 
float scrollBarCurrentD=0;
float moveTime;
boolean isMouseMoving = false;

float animationCounter = 5;
float animationSpeed = 0.8;

int delayTime = 2000;

void setup() {
  size(640, 380);

  background(0);

  // Load and play the video in a loop
  movie = new Movie(this, "../../../../../../oF/assets/fingers.mov");
  movie.loop();
}


void movieEvent(Movie m) {
  m.read();

  // Get actual width and height of the video
  // to calculate the aspect ratio when resizing the video width and height
  vid_w = m.width;
  vid_h = m.height;

  // calculate video width & height
  aspectRatio = width / vid_w;  
  /*
  println("current time : " + m.time());
   println(" current duration : " + scrollBarCurrentD);
   */

  scrollBarCurrentD = map(m.time(), 0, m.duration(), 0, width);
}

void draw() {
  if (movie.available() == true) {
    movie.read();
  }
  image(movie, 0, 0, width, vid_h * aspectRatio);

  // if mouse is not moving decrease the height of the scroll bar
  if (mouseX - pmouseX == 0 && mouseY - pmouseY == 0) {
    scrollBarH = animationCounter;

    if (animationCounter > 5) {
      animationCounter = animationCounter - animationSpeed;
    }
  } 

  if (isMouseMoving == true) {
    animationCounter = animationCounter + animationSpeed * delayTime/1000;
    if (animationCounter > 20) {
      animationCounter = 20;
    }
    
    scrollBarH = animationCounter;
  }

  if (mouseX - pmouseX != 0 || mouseY - pmouseY != 0) {
    if (isMouseMoving == false) {
      isMouseMoving = true;
      moveTime = millis();
      //println("set true");
    }
  } else {
    if (isMouseMoving == true && millis() - moveTime > 2000) {
      moveTime = millis();
      isMouseMoving = false;
      //println("set false");
    }
  }


  // check current mouse X postion & mouse previous X postion 
  // to see if mouse is moving or not
  // if it's moving jump to exact duration of movie
  noStroke();
  fill(255, 255, 255, 100);
  rect(0, 0, width, scrollBarH);


  fill(#F1C40F);
  rect(0, 0, scrollBarCurrentD, scrollBarH);
}


void mousePressed() {
  if (mouseX >= 0 && mouseX <= width && mouseY >= 0 && mouseY <= scrollBarH) {
    //println("on scroller");
    mPosition= map(mouseX, 0, width, 0, movie.duration());
    movie.jump(mPosition);
  } 
}