void setup() {
  size(1200, 800);
}

void draw() {
 background(128);
 
 float rad = radians(frameCount) % 2*PI;
 
 stroke(255); 
 fill(255);
 arc(600, 400, 300, 300, PI+rad, 2*PI+rad, OPEN);
 
 stroke(0);
 fill(0);
 arc(600, 400, 300, 300, rad, PI+rad, OPEN);
 
 stroke(255);
 fill(255);
 arc(600 + 75*cos(rad), 400+75*sin(rad), 149, 149, rad-.01, PI+rad+.01, OPEN);
 
 stroke(0);
 fill(0);
 arc(600 - 75*cos(rad), 400 - 75*sin(rad), 149, 149, PI+rad-.01, 2*PI+rad+.01, OPEN);
 
 stroke(255);
 fill(255);
 circle(600 - 75*cos(rad), 400 - 75*sin(rad), 37);
  
 stroke(0);
 fill(0);
 circle(600 + 75*cos(rad), 400 + 75*sin(rad), 37);
}
