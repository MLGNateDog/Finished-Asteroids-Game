class Fire extends GameObject {
  int t;

  Fire() {
    loc = myShip.loc.copy();
    vel = myShip.dir.copy();  
    vel.rotate(PI + random(-1.3, 1.3));
    vel.setMag(5);
    size = 1;
    lives = 1;
    t = 255;
  }

  void act() {
    super.act();
    dieOffScreen();
  }

  void show() {
    fill(0, t);
    stroke(#D10206, t);
    strokeWeight(3);
    t = t -35;
    if(t == 10){
      lives = 0;
    }
    rect(loc.x, loc.y, size, size);
  }
}
