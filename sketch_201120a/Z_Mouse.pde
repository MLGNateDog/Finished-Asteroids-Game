void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == OVER) {
    overClicks();
  }else if(mode == WIN){
    winClicks();
  } else {
    println("ERROR: Mode = " + mode);
  }
}
