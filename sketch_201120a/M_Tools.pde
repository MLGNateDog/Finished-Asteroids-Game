void button(int x, int y, int w, int h, String label, int ts, int drop) {


  //tactile
  if (touchingMouse(x, y, w, h)) {
    stroke(#AAA651);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
  }
  //drawing the button
  fill(#1A6C89);
  rect(x, y, w, h);
  textSize(ts);
  fill(0);
  text(label, x, y + drop);
}
//touching mouse
boolean touchingMouse(int x, int y, int w, int h) {
  if (mouseX > (x - w/2 - 5/2) && mouseX < (x + w/2 + 5/2) && mouseY > y - h/2 - 5/2 && mouseY < y + h/2 + 5/2) {
    return true;
  } else {

    return false;
  }
}
