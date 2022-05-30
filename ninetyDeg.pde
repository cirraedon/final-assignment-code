void setup() {
  size(1200, 800);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  strokeWeight(5);
  
  float fastFrames  = frameCount * 3;
 
 // nonsynchronous lines p.o.c.
  if (fastFrames <= 500) {
    line(100, 700, 100+fastFrames, 700-fastFrames);
  }
  if (fastFrames > 500 &&fastFrames <= 1000) {
    line(100, 700, 600, 200);
    line(600, 200, 600+(fastFrames-500), 200+(fastFrames-500));
  }
  if (fastFrames > 1000) {
    line(100, 700, 600, 200);
    line(600, 200, 1100, 700);
  }
}
