int size = 750;
color c = 33;
int shape = 1;
int count =  0;

public void setup() {
  size(800, 800);
  rectMode(CENTER);
  noStroke();
}
 
void draw() { 
  background(255); 
  if (shape < 6) { 
    fill(220,220,220);
    myFractal(width/2, height/2, size, shape, c);
  } 
 
  count++;
 
  if (count % 60 == 0) {
    count = 0;
    shape++;
    if (shape > 6) {
      shape=1;
    }
  }
}
 
public void myFractal(float x, float y, float size, int num, color c) 
{
 
  rect(x + size/3, y - size/3, size/3, size/3);
  rect(x - size/3, y - size/3, size/3, size/3);
  rect(x - size/3, y + size/3, size/3, size/3);
  rect(x + size/3, y + size/3, size/3, size/3);
 
  if (mousePressed && num-- > 1) {
    myFractal(x, y, size/3, num, color(32));
    myFractal(x, y-size/3, size/3, num, c);
    myFractal(x+size/3, y, size/3, num, c);
    myFractal(x-size/3, y, size/3, num, c);
    myFractal(x, y+size/3, size/3, num, c);
  }
}
