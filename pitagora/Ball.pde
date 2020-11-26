class Ball extends Object {

  int dia;

  Ball(float _posX, float _posY, float _rest, float _fric, int _r, int _g, int _b, float _angle, boolean _sta, int _dia) {
    super(_posX, _posY, _rest, _fric, _r, _g, _b, _angle, _sta);
    dia = _dia;
  }

  FCircle createBall() {
    FCircle ball = new FCircle(dia);
    ball.setPosition(posX, posY);
    ball.setStatic(sta);
    ball.setFill(r, g, b);
    ball.setRestitution(rest);
    ball.setFriction(fric);
    return ball;
  }

  void add() {
    FCircle ball = createBall();
    world.add(ball);
  }
}

void ballInit() {
  Ball ballf;
  Ball ballm;
  Ball balls;
  Ball ball_stop;
  ballf = new Ball(70, 20, 0, 0, 255, 255, 255, 0, false, 33);
  ballm = new Ball(100, 20, 0, 0, 255, 255, 255, 0, false, 33);
  balls = new Ball(130, 20, 0, 0, 255, 255, 255, 0, false, 33);
  ball_stop = new Ball(370, 230, 0, 0, 0, 0, 0, 0, true, 10);

  b1 = ballf.createBall();
  b_stop = ball_stop.createBall();

  world.add(b1);
  world.add(b_stop);
  ballm.add();
  balls.add();
}
