void setup() {
  size(1200, 800);
}

void draw() {
  background(0);
  noFill();
  stroke(255);
  
  float radianVal = radians(frameCount);
  
  // 4 same-size synchronized arcs p.o.c.
  arc(225, 400, 300, 300, 0, radianVal);
  arc(225, 400, 300, 300, PI/2, PI/2 + radianVal);
  arc(225, 400, 300, 300, PI, PI + radianVal);
  arc(225, 400, 300, 300, 3*PI/2, 3*PI/2 + radianVal);
  line(75, 400, 75 + radianVal*600/PI, 400);
  line(225 + 84, 400, 225 + 84, 400 - radianVal*246/PI);
  
  // 3 different sized synchronized arcs that finish at the same time as the arcs from above p.o.c.
  arc(600, 400, 300, 300, -PI/6, -PI/6 + (5.0/3.0) * radianVal);
  arc(600, 400, 300, 300, 2*PI/3, 2*PI/3 + (4.0/3.0) * radianVal);
  arc(600, 400, 300, 300, 4*PI/3, 4*PI/3 + radianVal);
  line(525, 270, 525, 270 + 519/PI * radianVal);
  
  // moving diagonal line p.o.c
  line(525, 512, 525 + 350/PI * radianVal, 512 - 445/PI * radianVal);
  line(525, 270, 525 + 230/PI * radianVal, 270 + 190/PI * radianVal);
  
  arc(975, 400, 300, 300, PI/3, PI/3 + (5.0/3.0) * radianVal);
  arc(975, 400, 300, 300, 7*PI/6, 7*PI/6 + (7.0/3.0) * radianVal);
  line(850, 318, 850 + 100/PI * radianVal, 318 + 424/PI * radianVal);
  
  
  float currRads = radianVal;
  
  for (float i = -.001; i <= 0; i+=.00000001) {
    if (HALF_PI + i == currRads) {
      noLoop();
    }
  }
}
