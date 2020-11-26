class Rope extends Object {
  int ropeLength;

  Rope(float _posX, float _posY, float _rest, float _fric, int _r, int _g, int _b, float _angle, boolean _sta, int _ropeLength) {
    super(_posX, _posY, _rest, _fric, _r, _g, _b, _angle, _sta);
    ropeLength = _ropeLength;
  }

  void createRope() {
    FBody center;
    FBody top;

    Ball ball1;
    ball1 = new Ball(posX, posY, 0, 0, 0, 0, 0, 0, true, 10);
    center = ball1.createBall();

    Ball _ball;
    _ball = new Ball(posX - (ropeLength+10+5)*sin(angle), posY + (ropeLength+10+5)*cos(angle), 0, 0, 0, 0, 0, angle, false, 20);
    top = _ball.createBall();

    world.add(center);
    world.add(top);

    FDistanceJoint junta = new FDistanceJoint(center, top);
    junta.setAnchor1(0, 0);
    junta.setAnchor2(0, 0);
    junta.setFrequency(0);
    junta.setDamping(0);
    junta.setFill(0);
    junta.calculateLength();
    world.add(junta);
  }
}

void ropeInit() {
  Rope rope1;

  rope1 = new Rope(550, 70, 0, 0, 0, 0, 0, PI/4, true, 100) ;
  rope1.createRope();
}
