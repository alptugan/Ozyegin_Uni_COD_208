import oscP5.*;
import netP5.*;


OscP5 oscP5;
int serverPortNumber    = 12000;
int grayColorVal = 20;

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
  fill(grayColorVal);
  rect(20,20,100,100);
  
}




/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /*println("### received an osc message with addrpattern "+theOscMessage.addrPattern()+" and typetag "+theOscMessage.typetag());
  theOscMessage.print();
  grayColorVal = 255;*/
  
  if(theOscMessage.checkAddrPattern("/test")==true) {
    
    //if(theOscMessage.checkTypetag("ifs")) {
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int firstValue = theOscMessage.get(0).intValue();  
      float secondValue = theOscMessage.get(1).floatValue();
      String thirdValue = theOscMessage.get(2).stringValue();
      
      print("### received an osc message /test ");
      println(" values: "+firstValue+", "+secondValue+", "+thirdValue);
      
      grayColorVal = firstValue;
    //}  
  } 
  
}