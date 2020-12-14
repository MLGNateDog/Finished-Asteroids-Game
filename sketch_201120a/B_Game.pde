void game() {
  if(shipImmune == true){
    background(#CF4647);
  }else if(shipImmune == false){
  background(#6C6C6C);
  }else{
   println("ERROR: BACKGROUND COLOUR NOT FOUND"); 
  }
  //println(myObjects.size());

  int i = 0; //starting at object zero
  while (i < myObjects.size()) {
    //processing each object individually
    GameObject obj = myObjects.get(i); //get the current object
    if (obj.lives > 0) {
      obj.show(); //tell the current object to draw itself
      obj.act(); //tell the current object to update itself
      i++; //go to the next object
    } else {
      myObjects.remove(i); //throw away object
    }
  }

  myShip.show();
  myShip.act();
  
  //pause button
  button(60, 30, 100, 40, "PAUSE", 20, 7);

  //lives counter
  fill(0);
  textSize(20);
  text("LIVES: " + myShip.lives, width - 100, 50);

  //Asteroid Counter
  fill(0);
  textSize(20);
  text("ASTEROID COUNT: " + astCount, width - 150, 80);



  //ufo add
  ufoSpawnTimer++;
  if (ufoSpawnTimer > ufoSpawnThreshold) {
    myObjects.add(new ufo());
    ufoShotTimer = 0;
    ufoSpawnTimer = 0;
  }
}

void gameClicks() {
  if (touchingMouse(60, 30, 100, 40)) {
    mode = PAUSE;
  }
  if (myShip.lives < 0 || myShip.lives == 0) {
    mode = OVER;
  }
  if (astCount == 0) {
    mode = WIN;
  }
}
