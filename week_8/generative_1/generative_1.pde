import controlP5.*;

ControlP5 cp5;

// Import pdf library to use pdf methods
import processing.pdf.*;

int save;

int centerX;
int centerY;


// Rectangle variables
int rect_radius;
int rect_num;
int rect_w;
int rect_h;
int rect_thickness;
boolean rotateRectangles;
boolean drawRectangles;

void setup() {
  size(1024, 768);
  background(0);

  // set save var default value to false
  save = 0;

  // Default Rectangle variables
  rect_radius = 180;
  rect_num = 22;
  rect_w = 70;
  rect_h = 30;
  rect_thickness = 1;
  drawRectangles = true;

 

  // Window Center position
  centerX = int(width) / 2;
  centerY = int(height) / 2;

  // GUI
  cp5 = new ControlP5(this);

  // RECTANGLES
  cp5.addToggle("drawRectangles")
    .setPosition(20, 10)
      .setSize(10, 10)
        .setValue(drawRectangles)
          ;
          

  cp5.addSlider("rect_radius")
    .setPosition(20, 40)
      .setSize(100, 10)
        .setRange(0, 255)
          .setValue(rect_radius)
            ;

  cp5.addSlider("rect_num")
    .setPosition(20,60)
      .setSize(100, 10)
        .setRange(0, 255)
          .setValue(rect_num)
            ;

  cp5.addSlider("rect_w")
    .setPosition(20,80)
      .setSize(100, 10)
        .setRange(0, 255)
          .setValue(rect_w)
            ;

  cp5.addSlider("rect_h")
    .setPosition(20,100)
      .setSize(100, 10)
        .setRange(0, 255)
          .setValue(rect_h)
            ;

  cp5.addSlider("rect_thickness")
    .setPosition(20,120)
      .setSize(100, 10)
        .setRange(0, 255)
          .setValue(rect_thickness)
            ;

   cp5.addToggle("rotateRectangles")
    .setPosition(20, 140)
      .setSize(10, 10)
        .setValue(true)
          ;

}

public void SaveFile(int theValue) {
  save = theValue;
  
  println(save);
}

void draw() {

  // ---------------------------------------------------------------
  // Begin Recording...
  // ---------------------------------------------------------------
  if (save == 1) 
  {
    int d = day();    // Values from 1 - 31
    int m = month();  // Values from 1 - 12
    int y = year();   // 2003, 2004, 2005, etc.
    int h = hour();
    int mi = minute();
    int s = second();

    // Convert to string
    String cday = String.valueOf(d);
    String cmonth = String.valueOf(m);
    String cyear = String.valueOf(y);
    String chour = String.valueOf(h);
    String cminute = String.valueOf(mi);
    String csecond = String.valueOf(s);

    beginRecord(PDF, "alp_tugan-"+ cyear + "-" + cmonth + "-" + cday + "-" + chour + "." + cminute + "." + csecond +".ai");
  }
  // ---------------------------------------------------------------

  background(0);

  // RECTANGLES
  float x,y;

  // to make equal space around 360 degree of circle
  float anglePerRect = 360.0f / rect_num;  

  strokeWeight(rect_thickness);
  for (int num=0; num < rect_num; num+= 1) {

    float rad = num * anglePerRect * (PI / 180);

    x = centerX + (rect_radius * cos(rad));
    y = centerY + (rect_radius * sin(rad));

    noFill();
    pushMatrix();
    translate(x, y);
    
    rectMode(CENTER);
    
    if(rotateRectangles == true) {
      rotate(rad);
    }
    //radians(num * anglePerRect)
    stroke(255);

    if (drawRectangles == true) {
      rect(0, 0, rect_w, rect_h);
    }

    rectMode(CORNER);
    popMatrix();
  }
  // RECTANGLE END


 
  // ---------------------------------------------------------------
  // Stop Recording...
  // ---------------------------------------------------------------
  if (save == 1) 
  {
    endRecord();
    save = 0;  // Set it to false to record just single frame
  }
  // ---------------------------------------------------------------

}

void keyPressed() {

  if (key >= 'r') {
    save = 1;
  }


}