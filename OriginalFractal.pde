float theta;   

void setup() {
  size(640, 360);
}

void draw() {
  background(0);
  frameRate(30);
  stroke(255);
  float a = (mouseX / (float) width) * 134;
  theta = radians(a);
  translate(width/2,height);
  line(0,0,0,-120);
  translate(0,-120);
  branch(120);
  
  System.out.println(a);

}

void branch(float h) {
  h *= 0.66;
  if (h > 2) {   
    pushMatrix();// Save the current state of transformation (i.e. where are we now)
    rotate(theta);   // Rotate by theta
    line(0, 0, 0, -h);  // Draw the branch
    translate(0, -h); // Move to the end of the branch
    branch(h);  
    popMatrix();// Ok, now call myself to draw two new branches!!     // Whenever we get back here, we "pop" in order to restore the previous matrix state
    
    // Repeat the same thing, only branch off to the "left" this time!
    rotate(-theta);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
  }
}
