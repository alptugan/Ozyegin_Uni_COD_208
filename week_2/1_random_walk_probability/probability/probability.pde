/*
20 % chance to move left,
10 % chance to move right
50 % chance to move up
20 % chance to move down
*/
float choice;
int x;
int y;




void setup() {
  size(800,400);
  background(255,255,255);
  
  x = width/2;
  y = height/2;
}

void draw() {
  //background(30);
  choice = random(1); // between 0 and 1
  
  
  //println(choice);
  if(choice < 0.3) {
    x = x - 1;
  }
  
  if(choice > 0.3 && choice < 0.6) {
    
   x = x + 1; 
  }
  
  if(choice > 0.6 && choice < 0.8) {
    y = y -1;
  }
  
  if(choice > 0.8 && choice < 1.0)
  {
    y = y + 1;
  }
  
  /*
  
  if(choice < 0.4) {
      x = x - 1;
  }
  
  
  if(choice > 0.4 && choice < 0.5) {
      x = x + 1;
  }
  
  if(choice > 0.5 && choice < 0.7) {
    y = y - 1; 
  }
 
  if(choice > 0.7) {
    y = y + 1; 
  }
  */
  
  // 2nd way to write same code
  /*
  if(choice < 0.4)
  {
     x = x -1; 
  }
  
  else if(choice < 0.5)
  {
     x = x + 1; 
  }
  
  else if(choice < 0.7) {
    y = y - 1;
  }
  
  else if(choice < 1) {
    
   y = y + 1; 
  }
  
  */
  stroke(255);
  point(x,y);
}