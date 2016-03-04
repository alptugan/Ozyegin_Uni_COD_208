Mover mover;
 
void setup() {
  size(640,360);
  //Create Mover object.
  mover = new Mover();
}
 
void draw() {
  background(255);
 
  //Call functions on Mover object.
  mover.update();
  mover.checkEdges();
  mover.display();
}
 