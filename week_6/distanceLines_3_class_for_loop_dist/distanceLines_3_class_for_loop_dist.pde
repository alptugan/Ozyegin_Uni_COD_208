int num = 200;
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

    stroke(#ff0000);

    if (i < num -1) {
      distance = dist(particles.get(i).pos.x, // x1
        particles.get(i).pos.y, // y1
        particles.get(i+1).pos.x, // x2
        particles.get(i+1).pos.y); // y2


      //println(distance);

      if (distance < threshold) {

        alpha = map(distance, 0, threshold, 255, 0);

        stroke(#ff0000, alpha);

        line(particles.get(i).pos.x, particles.get(i).pos.y, 
          particles.get(i+1).pos.x, particles.get(i+1).pos.y);
      }
    }
  }
}