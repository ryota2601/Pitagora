void text() {
  fill(0, 0, 255);
  textSize(33);
  textAlign(CENTER, CENTER);

  text("M", 100, 18);
  text("S", 133, 18);
  if (contact == 0) {
    fill(0, 0, 255);
    text("F", b1.getX(), b1.getY()-3);
  }else if (contact == 1){
    fill(0, 0, 255);
    text("F", bF.getX(), bF.getY()-3);
  }else {
    fill(255, 0, 0);
    text("F", bF.getX(), bF.getY()-3);
  }
}
