class ball {

  ball(float xLoc, float yLoc, float xVol, float yVol) {
    start = new PVector(xLoc, yLoc);
    position = new PVector(xLoc, yLoc);
    defPosition = new PVector(xLoc, yLoc);
    hastighed = new PVector(xVol, yVol);
    defHastighed = new PVector(xVol, yVol);
    tyngdekraft = new PVector(0, 0.982);
    res = new PVector(0, 0);
    defRes = new PVector(0, 0);

    history = new ArrayList<PVector>();
  }

  void display() {
    noStroke();
    fill(200);
    rectMode(CENTER);
    rect((width/2)+afstand+100, height-10, 175, 20);

    for (int i = 0; i < history.size(); i ++) {
      PVector current = history.get(i);
      fill(255, 174, 44, i*20);
      ellipse(current.x, current.y, dm, dm);
    }
    stroke(100, 83, 56);
    strokeWeight(2);
    fill(255, 174, 44);
    ellipseMode(CENTER);
    ellipse(position.x, position.y, dm, dm);
  }

  void update() {
    if (kast == true) {
      res.add(hastighed);
      res.add(vind);
      kast = !kast;
  
    }
    if (position.y >= height-20) {
      position.y = height-20;
      res.y *= -1;
      res.x = res.x*hop;
      res.y = res.y*hop;
    }
    if ((position.x > width) || (position.x < 0)) {
      res.x = -res.x;
    }
    if (fart == true) {
      res.add(tyngdekraft);
    }
    position.add(res);

    PVector v = new PVector(position.x, position.y);
    history.add(v);
    if (history.size() > 20) {
      history.remove(0);
    }
   }
    
  

  void layout () {
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, width, 50);
    textSize(20);

    fill(255, 174, 44);
    text("Position:", 20, 22);
    text(position.x, 100, 22);
    text(position.y, 100, 42);
    text("Hastighed:", 250, 22);
    text(defHastighed.x, 350, 22);
    text(defHastighed.y, 350, 42);
    text("Vindmodstand:", 500, 22);
    text(-1*vind.x, 650, 22);
    text(vind.y, 650, 42);
    text("Afstand:", 800, 22);
    text(4+afstand/150, 880, 22);
    text("Vinkel:", 1000, 22);
    text((180-degrees(a)),1070,22);
  }
}
