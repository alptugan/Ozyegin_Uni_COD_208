class myRect {

  float x = 0;
  float y = 0;

  float w = 100;
  float h = 100;
  
  float r;
  float g;
  float b;

  myRect(float _x,float _y,float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    println("yes I am here");
    
    r = random(0,255);
    b = random(0,255);
    g = random(0,255);
  }

  void display() {
    noStroke();
    
    fill(r,g,b,255);
    rect(x, y, w, h);
  }
}