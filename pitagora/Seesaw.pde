class Seesaw extends Object {
  int ssWidth;
  int ssHeight;
  
  Seesaw(float _posX, float _posY, float _rest, float _fric, int _r, int _g, int _b, float _angle, boolean _sta, int _ssWidth, int _ssHeight) {
    super(_posX, _posY, _rest, _fric, _r, _g, _b, _angle, _sta);
    ssWidth = _ssWidth;
    ssHeight = _ssHeight;
  }
  
  void createSeesaw() {
    FBody _ball;
    
    Ball ball;
    Rail rail;
    
    ball = new Ball(posX, posY, 0, 0, 0, 0, 0, 0, true, 5);
    rail = new Rail(posX, posY, rest, 0, 0, 0, 0, angle, false, ssWidth, ssHeight);
    _ball = ball.createBall();
    ss = rail.createRail();
    
    world.add(_ball);
    world.add(ss);

    FDistanceJoint junta = new FDistanceJoint(_ball, ss);
    junta.setAnchor1(0, 0);
    junta.setAnchor2(0, 0);
    junta.setFrequency(0);
    junta.setDamping(0);
    junta.setFill(255);
    junta.calculateLength();
    world.add(junta);
  }
  
}

void seesawInit() {
  Seesaw ss1;
  Seesaw ss2;
  Seesaw ss3;
  Seesaw ss4;
  Seesaw ss5;
  
  ss1 = new Seesaw(590, 230, 0, 0, 0, 0, 0, PI/2, true, 140, 10);
  ss2 = new Seesaw(950, 240, 0, 0, 0, 0, 0, PI/2, true, 140, 10);
  ss3 = new Seesaw(935, 350, 0, 0, 0, 0, 0, PI/2, true, 140, 10);
  ss4 = new Seesaw(950, 480, 0, 0, 0, 0, 0, PI/2, true, 150, 10);
  ss5 = new Seesaw(370, 153, 0, 0, 0, 0, 0, 0, true, 170, 10);
  ss1.createSeesaw();
  ss2.createSeesaw();
  ss3.createSeesaw();
  ss4.createSeesaw();
  ss5.createSeesaw();
}
  
  
