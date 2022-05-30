void setup() {
  size(1000, 800);
}

void draw() {
  background(0);
  fill(255);
  stroke(255);
  strokeWeight(10);
  float radianVal = radians(frameCount);
  
  
  line(500 + sin(radianVal) * 400, 700, 500 + sin(radianVal + 50) * 400, 100);
  line(500 + sin(radianVal + 50) * 400, 700, 500 + sin(radianVal + 100) * 400, 100);
  line(500 + sin(radianVal + 100) * 400, 700, 500 + sin(radianVal + 150) * 400, 100);
  line(500 + sin(radianVal + 150) * 400, 700, 500 + sin(radianVal + 200) * 400, 100);
  
  
}
