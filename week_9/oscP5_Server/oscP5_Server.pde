import oscP5.*;
import netP5.*;


OscP5 oscP5;
int serverPortNumber    = 12000;


/* a NetAddress contains the ip address and port number of a remote location in the network. */
//NetAddress myBroadcastLocation; 

void setup() {
  size(400,400);
  frameRate(25);
  
  /* create a new instance of oscP5. 
   * 12000 is the port number you are listening for incoming osc messages.
   */
  oscP5 = new OscP5(this,serverPortNumber);
  
 
}


void draw() {
  background(0);
}




/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* get and print the address pattern and the typetag of the received OscMessage */
  println("### received an osc message with addrpattern "+theOscMessage.addrPattern()+" and typetag "+theOscMessage.typetag());
  theOscMessage.print();
}