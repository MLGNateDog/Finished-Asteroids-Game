void over() {
  background(#833C3C);
  textSize(width/(1280/150));
  text("DEFEAT", width/2, height/5);

  //TRY AGAIN button
  button(width/2, height/3, width/5, height/12, "TRY AGAIN", 40, 15);

  //QUIT Button
  button(width/2, height/2, width/5, height/12, "QUIT", 40, 15);
}

void overClicks() {
  if (touchingMouse(width/2, height/3, width/5, height/12)) {
    mode = INTRO;
    rectMode(CENTER);
    textAlign(CENTER);
    myShip = new Spaceship();
    wkey=akey=skey=dkey=false;
    myObjects = new ArrayList<GameObject>();

    myObjects.add(new Asteroid());
    myObjects.add(new Asteroid());
    myObjects.add(new Asteroid());
    myObjects.add(new Asteroid());
  }

  if (touchingMouse(width/2, height/2, width/5, height/12)) {
    exit();
  }
}
