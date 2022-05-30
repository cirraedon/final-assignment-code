void setup() {
  size(1200, 800);
}

boolean pyramidClicked = false;
boolean travelerClicked = false;

void draw() {
  background(47, 48, 45);
  
  stroke(255);
  fill(255);
  ellipse(600, 400, 250, 250);
  
  stroke(0);
  fill(0);
  if (frameCount*2 < 700) {
    triangle(-300+frameCount*2, 500, -250+frameCount*2, 380, -50+frameCount*2, 500);
  }
  else {
    triangle(400, 500, 450, 380, 650, 500);
    
    if (!travelerClicked && !pyramidClicked) {
      update();
    }
    else {
      if (pyramidClicked) {
        float currFrame = frameCount;
        print(currFrame);
      }
      
      if (travelerClicked) {
        float currFrame = frameCount;
        print(currFrame);
      }
    }
  }
  
  /*
  testing code
  
  fill(226, 123, 56);
  stroke(226, 123, 56);
  arc(600, 400, 250, 250, PI+.05, 2*PI+1.03, CHORD);
  arc(600, 400, 250, 250, PI/3.0-0.1, 2*PI/3.0+0.1, CHORD);
  
  
  if (dark()) {
    print("dark");
  }
  if (light()) {
    print("light");
  }
  */
}

boolean light() {
  float disX = 600 - mouseX;
  float disY = 400 - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < 125 && !dark()) {
    return true;
  } else {
    return false;
  }
}

boolean dark() {
  if (mouseY <= 500) {
    if (mouseX >= 400 && mouseX <= 450) {
      if (mouseY >= (500 - (12.0/5.0)*(mouseX - 400))) {
        return true;
      }
    }
    else if (mouseX >= 450 && mouseX <= 650) {
      if (mouseY >= (500 - (3.0/5.0)*(650 - mouseX))) {
        return true;
      }
    }
  }
  return false;
}

void update() {
  if (light()) {
    stroke(255);
    fill(204);
    arc(600, 400, 250, 250, PI+.05, 2*PI+1.03, OPEN);
    arc(600, 400, 250, 250, PI/3.0-0.1, 2*PI/3.0+0.1, OPEN);
  }
  else if (dark()) {
    stroke(0);
    fill(22);
    triangle(400, 500, 450, 380, 650, 500);
  }
  else {
    stroke(255);
    fill(255);
    ellipse(600, 400, 250, 250);
    stroke(0);
    fill(0);
    triangle(400, 500, 450, 380, 650, 500);
  }
  
}

void mouseClicked() {
  if(pyramidClicked || travelerClicked) {
    return;
  }
  else {
    if (dark()) {
      pyramidClicked = true; 
    }
    if (light()) {
      travelerClicked = true;
    }
  }
  return;
}
