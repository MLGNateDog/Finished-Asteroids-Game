void pause() {
  background(#B4B4B4);

  //Continue Button
  button(width/2, height/3, width/5, height/12, "CONTINUE", 40, 15);

  //Quit Button
  button(width/2, height/2, width/5, height/12, "QUIT", 40, 15);
}

void pauseClicks() {
  if (touchingMouse(width/2, height/3, width/5, height/12)) {
    mode = GAME;
  }

  if (touchingMouse(width/2, height/2, width/5, height/12)) {
    exit();
  }
}
