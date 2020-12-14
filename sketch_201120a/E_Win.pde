void win() {
  background(#84A54B);
  textSize(width/(1280/150));
  text("VICTORY!", width/2, height/5);
  //Play Again button
  button(width/2, height/3, width/3, height/12, "KEEP PLAYING", 40, 15);

  //Quit
  button(width/2, height/2, width/5, height/12, "QUIT", 40, 15);
}

void winClicks() {
  if (touchingMouse(width/2, height/3, width/3, height/12)) {
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
    astCount = 4;
  }
  if (touchingMouse(width/2, height/2, width/5, height/12)) {
    exit();
  }
}
