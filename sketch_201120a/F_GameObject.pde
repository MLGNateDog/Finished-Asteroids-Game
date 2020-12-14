abstract class GameObject {

  //1. instance variables
  PVector vel;
  PVector loc;
  int size;
  int lives;

  GameObject() {
  }

  void show() {
    fill(0);
    stroke(255);
    strokeWeight(3);
    rect(loc.x, loc.y, size, size);
  }

  void act() {
    loc.add(vel);
  }

  void dieOffScreen() {
    if (loc.x <0 -50|| loc.x > width +50|| loc.y > height +50|| loc.y < 0 -50) {
      lives = 0;
    }
  }
}
