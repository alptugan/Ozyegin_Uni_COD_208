int num = 4;
int threshold = 200;
float distance;
float alpha;

Circle c1;
ArrayList<Circle> particles = new ArrayList<Circle>();



void setup() {
  size(800, 500);
  background(255);


  // Add circles to the arraylist at begining of the app
  for (int i = 0; i < num; i++) {
    c1 = new Circle();
    particles.add(c1);
  }
}


void draw() {
  background(10, 20, 30);


  // Call every Circle object in the ArrayList and set their positions
  for (int i = 0; i < num; i++) {

    particles.get(i).updateCircle();
    
    /*
    print("i values : ");
    println(i);
    */
    for(int j = 0; j < num; j++) {
      /*
      print("j values : ");
      println(j);
      */
      
      distance = dist(particles.get(i).pos.x,
                      particles.get(i).pos.y,
                      particles.get(j).pos.x,particles.get(j).pos.y );

      
      
      
    }
    
    
    stroke(#ff0000);
   
  }
}