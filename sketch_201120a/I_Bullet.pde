class Bullet extends GameObject {

  //1. Instance Variables

  //2. Constructor
  Bullet() {
    loc = new PVector(myShip.loc.x, myShip.loc.y);
    PVector barrel = myShip.dir.copy();
    barrel.setMag(50);
    loc.add(barrel);
    vel = new PVector(myShip.dir.x, myShip.dir.y);
    vel.setMag(20);
    vel.add(myShip.vel);
    lives = 1;
    size = 10;
  }

  void show() {
    fill(#142581);
    noStroke();
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(vel.heading());
    ellipse(0, 0, 2*size, size);
    popMatrix();
  }

  void act() {
    super.act();
    dieOffScreen();
  }
}
