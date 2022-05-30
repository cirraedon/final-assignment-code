void setup() {
  size(1200, 800);
}

boolean negated = false;

void draw() { 
  
  background(255);
  noFill();
  strokeWeight(5);
    
  stroke(255, 0, 0);
  
  float rad = radians(frameCount);
  float offset = 50*tan(rad);
  
  if(negated) {
    offset = -offset;
    
    stroke(0, 0, 255); 
    background(0);
  }
  
  line(300 + 60*cos(rad), 
  400 - 60*sin(rad) - offset, 
  300 - 60*cos(rad), 
  400 + 60*sin(rad) - offset);
  line(300 - 60*cos(rad), 
  400 - 60*sin(rad) + offset, 
  300 + 60*cos(rad), 
  400 + 60*sin(rad) + offset);
  
  line(450 + 60*cos(rad), 
  400 - 60*sin(rad) + offset, 
  450 - 60*cos(rad), 
  400 + 60*sin(rad) + offset);
  line(450 - 60*cos(rad), 
  400 - 60*sin(rad) - offset, 
  450 + 60*cos(rad), 
  400 + 60*sin(rad) - offset);
  
  // center 4
  line(600 - 60*cos(rad), 
  400 - 60*sin(rad) - offset, 
  600 + 60*cos(rad), 
  400 + 60*sin(rad) - offset);
  line(600 + 60*cos(rad), 
  400 - 60*sin(rad) - offset, 
  600 - 60*cos(rad), 
  400 + 60*sin(rad) - offset);
  line(600 - 60*cos(rad), 
  400 - 60*sin(rad) + offset, 
  600 + 60*cos(rad), 
  400 + 60*sin(rad) + offset);
  line(600 + 60*cos(rad), 
  400 - 60*sin(rad) + offset, 
  600 - 60*cos(rad), 
  400 + 60*sin(rad) + offset);
  
  line(750 + 60*cos(rad), 
  400 + 60*sin(rad) + offset, 
  750 - 60*cos(rad), 
  400 - 60*sin(rad) + offset);
  line(750 - 60*cos(rad), 
  400 + 60*sin(rad) - offset, 
  750 + 60*cos(rad), 
  400 - 60*sin(rad) - offset);
  
  line(900 - 60*cos(rad), 
  400 - 60*sin(rad) - offset, 
  900 + 60*cos(rad), 
  400 + 60*sin(rad) - offset);
  line(900 + 60*cos(rad), 
  400 - 60*sin(rad) + offset, 
  900 - 60*cos(rad), 
  400 + 60*sin(rad) + offset);
  
  stroke(0, 255, 0);
  line(210, 0, 210, 1200);
  line(990, 0, 990, 1200);
}

void mousePressed() {
  negated = !negated;
}
