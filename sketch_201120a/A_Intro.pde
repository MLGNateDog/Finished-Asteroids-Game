void intro() {
  background(#464646);

  //pause button
  button(width/2, height/2, width/4, height/10, "PLAY", 80, 25);
}

void introClicks() {
  if (touchingMouse(width/2, height/2, width/4, height/10)) {
    mode = GAME;
  }
}
