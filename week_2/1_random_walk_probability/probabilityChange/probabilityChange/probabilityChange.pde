/*
40 % chance to move left,
10 % chance to move right
20 % chance to move up
30 % chance to move down
*/
float choice;
int x;
int y;

float leftRatio = 0.1;
float rightRatio = 0.1;
float upRatio = 0.7;
float downRatio = 1;


void setup() {
  size(800,400);
  background(255,255,255);
  
  x = width/2;
  y = height/2;
}

void draw() {
  
  choice = random(1);

  
  // 2nd way to write same code
  
  if(choice < leftRatio)
  {
     x = x -1; 
  }
  
  else if(choice < rightRatio)
  {
     x = x + 1; 
  }
  
  else if(choice < upRatio) {
    y = y - 1;
  }
  
  else if(choice < downRatio) {
    
   y = y + 1; 
  }
  
  
  point(x,y);
  
  if(y < 100) {
    leftRatio = 0.7;
    rightRatio = 0.8;
    upRatio = 0.9;
    downRatio = 1;
  }
  
  if(x < 100) {
    leftRatio = 0.1;
    rightRatio = 0.2;
    upRatio = 0.3;
    downRatio = 1;
  }
  
  if(y > 300) {
    leftRatio = 0.1;
    rightRatio = 0.8;
    upRatio = 0.9;
    downRatio = 1;
  }
  
  if(x > width*0.5 + 100) {
    leftRatio = 1;
    rightRatio = 0.9;
    upRatio = 0.7;
    downRatio = 0.8;
  }
  
}