ball bold;

void setup() {
  size(1200, 800);
  frameRate(60);
  bold = new ball(50, 550, 15, -15);
  vind = new PVector(2,0);
}

void draw() {
  background(0);
  a = PVector.angleBetween(hastighed, position);
  bold.display();
  bold.update();
  bold.layout(); //<>//
  
}
