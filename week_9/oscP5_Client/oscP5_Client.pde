import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

int listeningPortNumber = 13000;
int serverPortNumber    = 12000;

String serverAddress    = "169.254.150.156";

OscMessage myMessage2;

void setup() {
  size(400,400);
  frameRate(25);
  
  /* start oscP5, listening for incoming messages at port 13000 */
  oscP5 = new OscP5(this,listeningPortNumber);
  
  /* myRemoteLocation is a NetAddress. a NetAddress takes 2 parameters,
   * an ip address and a port number. myRemoteLocation is used as parameter in
   * oscP5.send() when sending osc packets to another computer, device, 
   * application. usage see below. for testing purposes the listening port
   * and the port of the remote location address are the same, hence you will
   * send messages back to this sketch.
   */
  myRemoteLocation = new NetAddress(serverAddress,serverPortNumber);
  
  
}


void draw() {
  background(0);  
  
  myMessage2 = new OscMessage("/         ");
  myMessage2.add(mouseX); /* add an int to the osc message */
  myMessage2.add(12.34); /* add a float to the osc message */
  myMessage2.add("some text"); /* add a string to the osc message */
  /* send the message to server applicaiton */
  oscP5.send(myMessage2, myRemoteLocation); 
}

void mousePressed() {
  /* in the following different ways of creating osc messages are shown by example */
  OscMessage myMessage = new OscMessage("/test");
  
  myMessage.add(mouseX); /* add an int to the osc message */
  myMessage.add(12.34); /* add a float to the osc message */
  myMessage.add("some text"); /* add a string to the osc message */

  /* send the message to server applicaiton */
  oscP5.send(myMessage, myRemoteLocation); 
}


/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}