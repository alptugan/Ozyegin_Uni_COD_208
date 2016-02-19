float t = 3;
/* 
void draw() {
//We need the noise value for a specific moment in time.
  float n = noise(t);
  println(n);
}


*/


 
void draw() {
  float n = noise(t);
  println(n);
//Now, we move forward in time!
  t += 0.01;
}