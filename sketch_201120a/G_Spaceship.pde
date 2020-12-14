class Spaceship extends GameObject {

  //1. Instance Variables or Fields
  PVector dir;
  int shotTimer, threshold, SSW, cap, barrelTip, ImmunityCounter, ImmunityThreshold;

  //2. Constructor name matches the class
  Spaceship() {
    loc = new PVector(width/2, height/2);
    dir = new PVector(1, 0);
    vel = new PVector(0, 0);
    size = 50;
    lives = 3;
    shotTimer = 0;
    threshold = 30;
    SSW = 4;
    cap = 7;
    ImmunityCounter = 90;
    ImmunityThreshold = 60*3;
  }

  //3. Behaviour Functions
  void show() {
    vel.limit(cap);
    pushMatrix();
    fill(#142581);
    stroke(0);
    strokeWeight(SSW);
    translate(loc.x, loc.y);
    rotate(dir.heading());
    ellipse(0, 0, size, size);
    fill(255);
    line(size/2, 0, 50, 0 );
    barrelTip = size/2 -50;
    popMatrix();
  }

  void act() {
    super.act();
    shotTimer++;
    ImmunityCounter++;

    //ship immunity
    if (ImmunityCounter < ImmunityThreshold) {
      shipImmune = true;
    } else {
      shipImmune = false;
    }

    if (akey) {
      dir.rotate(-radians(3));
    }
    if (dkey) {
      dir.rotate(radians(3));
    }
    if (wkey == true) {
      vel.add(dir);

      //add the fire
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
      myObjects.add(new Fire());
    }

    if (skey == true) {
      vel.mult(0.95);
    }

    if (spacekey && shotTimer > threshold && shipImmune == false) {
      myObjects.add(new Bullet());
      shotTimer = 0;
    }


    //wrap around
    if (loc.x > (width + size/2 +20)) {
      loc.x = -(size/2) -20;
    }
    if (loc.x < -(size/2) - 20) {
      loc.x = width + (size/2) + 20;
    }
    if (loc.y > height + size/2 + 20) {
      loc.y = -(size/2) - 20;
    }
    if (loc.y < -(size/2) -20) {
      loc.y = height + size/2 + 20;
    }

    //asteroid collide
    int i = 0;
    while (i < myObjects.size()) {
      GameObject myObj = myObjects.get(i);
      if (myObj instanceof Asteroid) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + (myObj.size)/2 && shipImmune == false) {
          lives = lives -1;
          myObj.lives = 0;
          myObjects.add(new Asteroid());

          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));


          if (lives == 0) {
            mode = OVER;
          }
          ImmunityCounter = 0;
        }
      }
      i++;
    }

    //UFO Collide
    int z = 0;
    while (z < myObjects.size()) {
      GameObject myObj = myObjects.get(z);
      if (myObj instanceof ufo) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + (myObj.size)/2 && shipImmune == false) {
          lives= lives -2;
          myObj.lives = 0;
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));
          myObjects.add(new collision(myObj.loc.x, myObj.loc.y));

          if (lives == 0) {
            mode = OVER;
          }
          ImmunityCounter = 0;
        }
      }
      z++;
    }

    //Enemy Bullet Collide
    int q = 0;
    while (q < myObjects.size()) {
      GameObject myObj = myObjects.get(q);
      if (myObj instanceof EnemyBullet) {
        if (dist(loc.x, loc.y, myObj.loc.x, myObj.loc.y) < size/2 + (myObj.size)/2 && shipImmune == false) {
          myObj.lives--;
          lives--;
          if (lives == 0) {
            mode = OVER;
          }
          ImmunityCounter = 0;
        }
      }
      q++;
    }
  }
}
