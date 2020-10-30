boolean earth = true;
float earthRValue = 0;
float earthX = 0;
float earthY = 200;
float daysPerYear = 365;
float earthRSpeed = 0.0005;

void setup (){
  size(800,800);
  rectMode(CENTER);
  noStroke();
}

void draw (){
  background(0);
  translate(width/2,height/2);
  fill(255,255,100);
  ellipse(0,0,100,100);
  if (earth == true){
    pushMatrix();
    rotate(PI*earthRValue);
    fill(0,0,255);
    ellipse(earthX,earthY,20,20);
    pushMatrix();
    translate(earthX,earthY);
    rotate(PI*earthRValue*daysPerYear);
    fill(200);
    ellipse(0,20,5,5);
    popMatrix();
    popMatrix();
    earthRValue += earthRSpeed;
  } else {
    pushMatrix();
    rotate(PI*earthRValue);
    fill(0,0,255);
    ellipse(earthX,earthY,20,20);
    pushMatrix();
    translate(earthX,earthY);
    rotate(PI*earthRValue*daysPerYear);
    fill(200);
    ellipse(0,20,5,5);
    popMatrix();
    popMatrix();
  }
}

void keyPressed(){
  if (key == ' '){
    if (earth == true){
      earth = false;
    } else {
      earth = true;
    }
  }
}
