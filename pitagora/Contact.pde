void contactStarted(FContact c) {
  if ((c.getBody1() == b1 && c.getBody2() == d1) || (c.getBody1() == d1 && c.getBody2() == b1)){
    contact++;
    world.remove(b1);
    Ball ball;
    ball = new Ball(574, 555, 0, 0, 255, 255, 255, 0, true, 30);
    bF = ball.createBall();
    
    world.add(bF);
  }
  if ((c.getBody1() == d2 && c.getBody2() == d3) || (c.getBody1() == d3 && c.getBody2() == d2)) {
    float x = d3.getX();
    float y = d3.getY();
    world.remove(d2);
    world.remove(d3);
    Rail dominoFin2;
    Rail dominoFin3;
    dominoFin3 = new Rail(x, y, 0, 0, 0, 0, 0, PI/4, true, 25, 3);
    dominoFin2 = new Rail(615, 558, 0, 0, 0, 0, 0, PI/2, true, 25, 3);
    dF2 = dominoFin2.createRail();
    dF3 = dominoFin3.createRail();
    world.add(dF2); 
    world.add(dF3);
  }
  if ((c.getBody1() == ss && c.getBody2() == r_stopper) || (c.getBody1() == r_stopper && c.getBody2() == ss)) {
    world.remove(r_stopper);
    world.add(rn);
  }
  if ((c.getBody1() == rn && c.getBody2() == dF3) || (c.getBody1() == dF3 && c.getBody2() == rn)) {
    contact++;
    world.remove(d1);
    Rail dominoFin1;
    dominoFin1 = new Rail(600, 558, 0, 0, 255, 0, 0, PI/2, true, 25, 3);
    dF1 = dominoFin1.createRail();
    dF2.setFill(255, 0, 0);
    dF3.setFill(255, 0, 0);
    
    world.add(dF1);
    world.remove(rn);
    world.remove(d4);
    world.add(rFn);
  }
}
