void keyPressed() {
  if (key == ENTER) {
    kast = true;
    fart = true;
  }
  if (key == ' ') {
    res.set(defRes);
    position.set(defPosition);
    hastighed.set(defHastighed);
    fart = false;
  }
  if ((key == 'a')||(key == 'A')) {
    afstand = afstand-10;
  } else if ((key == 'd')||(key == 'D')) {
    afstand = afstand+10;
  } else if ((key == 's')||(key == 'S')) {
    hastighed.rotate(-0.0174533);
  } else if ((key == 'w')||(key == 'W')) {
    hastighed.rotate(0.0174533);
  }
}
