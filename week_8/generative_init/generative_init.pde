import controlP5.*;


ControlP5 gui;

int sliderValue = 40;
int sliderRect2 = 40;
int sliderCircle = 40;


int ShowColorWheel = 0;

int id = 1;

int centerX;
int centerY;

void setup() {
  size(800, 600);
  background(0);

  centerX = int(width*0.5);
  centerY = height >> 1;

  gui = new ControlP5(this);

  // 1st rect
  gui.addSlider("sliderValue")
    .setPosition(40, 40)
    .setRange(0, 255);

  // second rect
  gui.addSlider("sliderRect2")
    .setPosition(40, 60)
    .setRange(0, 255);

  // circle
  gui.addSlider("sliderCircle")
    .setPosition(40, 80)
    .setRange(0, 255);

  gui.addRadioButton("radioButton")
    .setPosition(240, 40)
    .setSize(10, 10)
    .addItem("rectangle 1", 0)
    .addItem("rectangle 2", 1)
    .addItem("circle", 2)
    .activate(id);


  gui.addColorWheel("colorVal", 250, 10, 200)
    .setRGB(color(128, 0, 255))
    .setPosition(320, 40);

  gui.addToggle("ShowColorWheel")
    .setValue(0)
    .setPosition(40, 100)
    .setSize(110, 19)
    ;
}



void radioButton(int a) {
  //println("a radio Button event: "+a);
  id = a;
}

void draw() {
  background(0);

 println(ShowColorWheel);
  println(id);
  
  
  if(ShowColorWheel == 0) {
    gui.get("colorVal").hide();
  }else{
    gui.get("colorVal").show();
  }
  
  rectMode(CENTER); 

  if (id == 0) {
    fill(#ffffff);
    rect(centerX, centerY, sliderValue, sliderValue);
  }
  rectMode(CORNER);

  if (id == 1) {
    fill(#ff0000);
    rect(centerX, centerY, sliderRect2, sliderRect2);
  }


  if (id == 2) {
    fill(#00ff00);
    ellipse(centerX, centerY, sliderCircle, sliderCircle);
  }
}