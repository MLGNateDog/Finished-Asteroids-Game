class ufo extends GameObject {
  int USW, UfoX, UfoV;
  float rn;

  ufo() {
    rn = random(0, 1);
    if (rn < 0.5) {
      lScreenSpawn = true;
      vel = new PVector(1, 0);
    } else {
      lScreenSpawn = false;
      vel = new PVector(-1, 0);
    }

    if (lScreenSpawn == true) {
      UfoX = -35;
    } else if (lScreenSpawn == false) {
      UfoX = width + 35;
    } else {
      println("UFO SPAWN ERROR");
    }
    
    lives = 1;
    size = 60;
    loc = new PVector(UfoX, random(0, height));
    PVector aim = new PVector(myShip.loc.x - loc.x, myShip.loc.y - loc.y);
    aim.setMag(10);
    vel.setMag(3);
    USW = 5;
    ufoShotTimer = 0;
  }

  void show() {
    fill(#FF0505);
    stroke(0);
    strokeWeight(USW);
    circle(loc.x, loc.y, size);
  }

  void act() {
    super.act();
    ufoShotTimer ++;
    
        //fire rate
    if (ufoShotTimer > ufoFireThreshold && shipImmune == false) {
      myObjects.add(new EnemyBullet(loc));
      ufoShotTimer = 0;
    }

    //ufo dies off screen
    if (loc.x > (width + size/2 +20) || loc.x < -(size/2) - 20 || loc.y > height + size/2 + 20|| loc.y < -(size/2) -20) {
      lives = 0;
    }
  
    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Bullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + myObj.size) { //not myObj.size/2 because bullet is not circular
          myObj.lives = 0;
          lives = lives -1;
          
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
        }
      }
      i++;
    }
  }
}
