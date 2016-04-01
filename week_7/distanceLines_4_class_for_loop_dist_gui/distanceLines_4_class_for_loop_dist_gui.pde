// import gui library
import controlP5.*;

// Create public gui holder
ControlP5 cp5;

int num = 50;
int threshold = 100;
boolean showCircles = true;

Circle c1;
ArrayList<Circle> particles = new ArrayList<Circle>();



void setup() {
  size(800, 500);
  background(255);
  
  
  
  for(int i = 0; i < num; i++) {
    c1 = new Circle();
    particles.add(c1);
  }
  
  // instantiate slider
  cp5 = new ControlP5(this);
  
  // add a horizontal sliders, the value of this slider will be linked
  // to variable 'sliderValue' 
  cp5.addSlider("threshold")
     .setPosition(20,20)
     .setRange(0,1000)
     ; 
     
     
  cp5.addToggle("showCircles")
     .setPosition(40,250)
     .setSize(50,20)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     ;
}



void draw() {
  background(10, 20, 30);
  
   println(threshold);
   
   for(int i = 0; i < num; i++) {
      
     if(showCircles == true) {
       particles.get(i).updateCircle();
       particles.get(i).radius = 20;
     }
     
     
     for(int j = 0; j < num; j++) {
       if(i != j) {
       float dist = dist(particles.get(i).pos.x,particles.get(i).pos.y,particles.get(j).pos.x,particles.get(j).pos.y );

       if (dist < threshold) {
          float alpha = map(dist,0,threshold,255,0);
          stroke(120, 254, 207, alpha);
          line(particles.get(i).pos.x,particles.get(i).pos.y,particles.get(j).pos.x,particles.get(j).pos.y);
           
        }
     }
     }
  }
}