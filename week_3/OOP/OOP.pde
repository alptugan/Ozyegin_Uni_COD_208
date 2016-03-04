

myRect customRect;

void setup() {
  size(400,400);
  
  customRect = new myRect(0,20,20,20);
  
}



void draw() {
  background(50);
 
   
  customRect.display();
  //customRect.x = mouseX;
  
  /*for(int i = 0; i < 300; i= i+1) {
    
    
  }*/
}