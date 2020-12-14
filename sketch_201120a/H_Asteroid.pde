class Asteroid extends GameObject {

  //1. instance variables
  int ASW; //Asteroid Stroke Weight
  int startLives;

  //2. Constructor
  Asteroid() {
    loc = new PVector(random(width), random(height));
    vel = new PVector(1, 0);
    vel.rotate(random(TWO_PI));
    size = int(random(75, 95));
    startLives = 2;
    lives = 1;
    ASW = 3;
  }

  Asteroid(int s, float x, float y) {
    lives = 1;
    loc = new PVector(x, y);
    vel = new PVector(1, 0);
    vel.rotate(random(TWO_PI));
    size = s;
    ASW = 3;
  }

  void show() {
    fill(#F0CA4B);
    stroke(0);
    strokeWeight(ASW);
    ellipse(loc.x, loc.y, size, size);
  }


  void act() {
    super.act();

    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + myObj.size) {
          
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          myObjects.add(new collision(loc.x, loc.y));
          
          myObj.lives = 0;
          lives = lives -1;
          astCount = astCount -1;
          if (size > 50) {
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
            astCount ++;
            myObjects.add(new Asteroid(size/2, loc.x, loc.y));
            astCount++;
          }
        }
      }

      i++;
  if(astCount == 0){
   mode = WIN; 
  }
  }
  
  

    //wrap around
    if (loc.x > (width + size + ASW)) {
      loc.x = -(size/2);
    }
    if (loc.x < -(size/2 +ASW)) {
      loc.x = width + (size/2) +ASW;
    }
    if (loc.y > height + size/2 +ASW) {
      loc.y = -(size/2 + ASW);
    }
    if (loc.y < -(size/2 +ASW)) {
      loc.y = height + size/2 +ASW;
    }
  }
}
