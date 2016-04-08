import oscP5.*;
import netP5.*;


OscP5 oscP5;
int serverPortNumber    = 12000;

int evrimVal;
int evrimVal2;

int tugrulVal;
int tugrulVal2;

int borisVal;
int borisVal2;

int sinemVal;
int sinemVal2;

int zeynepVal;
int zeynepVal2;


int reyhanVal;
int reyhanVal2;

int bc1,bc2,bc3;

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
  
  fill(255,0,0);
  text("evrim", evrimVal + 20, evrimVal2 + 2);
  ellipse(evrimVal,evrimVal2,30,30);
  
  fill(255,0,0);
  text("sinem", sinemVal + 20, sinemVal2 + 2);
  ellipse(sinemVal,sinemVal2,30,30);
  
  
  fill(bc1,bc2,bc3);
  text("boris", borisVal + 20, borisVal2 + 2);
  ellipse(borisVal,borisVal2,30,30);
  
  fill(255,0,0);
  text("reyhan", reyhanVal + 20, reyhanVal2 + 2);
  ellipse(reyhanVal,reyhanVal2,30,30);
  
  
  fill(255,0,0);
  text("sinem", sinemVal + 20, sinemVal2 + 2);
  ellipse(sinemVal,sinemVal2,30,30);
  
  
  fill(255,0,0);
  text("zeynep", zeynepVal + 20, zeynepVal2 + 2);
  ellipse(zeynepVal,zeynepVal2,30,30);
  
}




/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* get and print the address pattern and the typetag of the received OscMessage */
  //println("### received an osc message with addrpattern "+theOscMessage.addrPattern()+" and typetag "+theOscMessage.typetag());
  theOscMessage.print();
  
  
  if(theOscMessage.checkAddrPattern("/evrim")==true) {
    /* check if the typetag is the right one. */
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int firstValue = theOscMessage.get(0).intValue();  
      int secondValue = theOscMessage.get(1).intValue(); 
      print("### received an osc message /evrim with typetag ifs.");
      println(" values: "+firstValue);
      evrimVal = firstValue;
      evrimVal2 = secondValue;
  } 
  
  if(theOscMessage.checkAddrPattern("/boris")==true) {
    /* check if the typetag is the right one. */
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int firstValue = theOscMessage.get(0).intValue();  
      int secondValue = theOscMessage.get(1).intValue(); 
      
      int red = theOscMessage.get(2).intValue();
      int green = theOscMessage.get(3).intValue();
      int blue = theOscMessage.get(4).intValue();
      
      borisVal = firstValue;
      borisVal2 = secondValue;
      
      bc1 = red;
      bc2 = green;
      bc3 = blue;
      
      print("### received an osc message /boris with typetag ifs.");
      println(" values: "+firstValue);
  }
  
  if(theOscMessage.checkAddrPattern("/reyhan")==true) {
    /* check if the typetag is the right one. */
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int firstValue = theOscMessage.get(0).intValue();  
      int secondValue = theOscMessage.get(1).intValue(); 
      print("### received an osc message /reyhan with typetag ifs.");
      println(" values: "+firstValue);
      
      reyhanVal = firstValue;
      reyhanVal2 = secondValue;
  }
  
  if(theOscMessage.checkAddrPattern("/zeynep")==true) {
    /* check if the typetag is the right one. */
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int firstValue = theOscMessage.get(0).intValue();
      int secondValue = theOscMessage.get(1).intValue();
      print("### received an osc message /zeynep with typetag ifs.");
      println(" values: "+firstValue);
      
      zeynepVal = firstValue;
      zeynepVal2 = secondValue;
  }
  
  if(theOscMessage.checkAddrPattern("/sinem")==true) {
    /* check if the typetag is the right one. */
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int firstValue = theOscMessage.get(0).intValue();  
      int secondValue = theOscMessage.get(1).intValue();
      print("### received an osc message /sinem with typetag ifs.");
      println(" values: "+firstValue);
      
      
      sinemVal = firstValue;
      sinemVal2 = secondValue;
  }
  
  if(theOscMessage.checkAddrPattern("/tugrul")==true) {
    /* check if the typetag is the right one. */
      /* parse theOscMessage and extract the values from the osc message arguments. */
      int firstValue = theOscMessage.get(0).intValue(); 
      int secondValue = theOscMessage.get(1).intValue();
      
      print("### received an osc message /tugrul with typetag ifs.");
      println(" values: "+firstValue);
      
      tugrulVal = firstValue;
      tugrulVal2 = secondValue;
  }
}