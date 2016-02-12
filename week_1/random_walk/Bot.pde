class Bot {
  int x;
  int y;
  
  int px;
  int py;
  
   int lx;
      int ly;
  Bot() {
    x = width/2;
    y = height/2;
    lx = x;
    ly = y;
    
    px = x;
   py = y;
  }
  
  
  void display() {
    stroke(0);
    point(x,y);
    
    line(px,py,x,y);
    
    if(x % 50 == 0 && abs(lx-x) > 40)
    {
      float r = random(5,40);
      fill(255,255,255);
      ellipse(x,y,r,r);
 
      noFill();
      stroke(0);
      
       
      
      line(lx,ly,x,y);
      
      lx = x;
       ly = y;
  }
  }
  
  void step(int _step) {
   px = x;
   py = y;
    int choice = int(random(4));
    
    if (choice == 0) {
      //x++;
      x += _step;
    } else if (choice == 1) {
      //x--;
      x -= _step;
    } else if (choice == 2) {
      //y++;
      y += _step;
    } else {
      y -= _step;
      //y--;
    }

  }
}