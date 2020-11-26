class Rail extends Object {

  int wid;
  int hei;

  Rail(float _posX, float _posY, float _rest, float _fric, int _r, int _g, int _b, float _angle, boolean _sta, int _wid, int _hei) {
    super(_posX, _posY, _rest, _fric, _r, _g, _b, _angle, _sta);
    wid = _wid;
    hei = _hei;
  }

  FBox createRail() {
    FBox rail;
    rail = new FBox(wid, hei);
    rail.setRotation(angle);
    rail.setPosition(posX, posY);
    rail.setStatic(sta);
    rail.setFill(r, g, b);
    rail.setRestitution(rest);
    rail.setFriction(fric);
    rail.setNoStroke();
    return rail;
  }

  void add() {
    FBox rail = createRail();
    world.add(rail);
  }
}

void railInit() {
  Rail rail1;
  Rail rail2;
  Rail rail3;
  Rail rail4;
  Rail rail5;
  Rail rail6;
  Rail rail7;
  Rail rail9;
  Rail stop;
  Rail railn;
  Rail _rFn;
  Rail railbox1;
  Rail railbox2;
  Rail railbox3;
  Rail domino1;
  Rail domino2;
  Rail domino3;
  Rail[] dominos_under = new Rail[21];
  Rail[] dominos_top = new Rail[22];

  rail1 = new Rail(70, 40, 0, 0, 0, 0, 0, 0, true, 50, 5);
  rail2 = new Rail(120, 40, 0, 0, 0, 0, 0, 0, true, 70, 5);
  rail3 = new Rail(80, 100, 0, 0, 0, 0, 0, PI/6, true, 100, 10);
  rail4 = new Rail(300, 540, 0, 0, 0, 0, 0, PI/24, true, 300, 10);
  rail5 = new Rail(465, 230, 0, 0, 0, 0, 0, PI/24, true, 100, 10);
  rail6 = new Rail(475, 330, 0, 0, 0, 0, 0, -PI/30, true, 200, 10);
  rail7 = new Rail(415, 410, 0, 0, 0, 0, 0, PI/30, true, 300, 10);
  rail9 = new Rail(780, 200, 0, 0, 0, 0, 0, 0, true, 320, 10);
  stop = new Rail(465, 170, 0, 0, 0, 0, 255, 0, true, 25, 3);
  railn = new Rail(465, 170, 0, 0, 0, 0, 255, 0, false, 25, 3);
  _rFn = new Rail(635, 558, 0, 0, 255, 0, 0, PI/2, true, 25, 3);
  railbox1 = new Rail(615, 335, 0, 0, 0, 0, 0, 0, true, 40, 5);
  railbox2 = new Rail(590, 325, 0, 0, 0, 0, 0, PI/4, true, 30, 5);
  railbox3 = new Rail(643, 318, 0, 0, 0, 0, 0, -PI/3, true, 50, 5);
  domino1 = new Rail(600, 558, 0, 0, 0, 0, 0, PI/2, true, 25, 3);
  domino2 = new Rail(615, 558, 0, 0, 0, 0, 0, PI/2, true, 25, 3);
  domino3 = new Rail(630, 558, 0, 0, 0, 0, 0, PI/2, false, 25, 3);
  for (int i=0; i<dominos_under.length; i++) {
    dominos_under[i] = new Rail(645 + 15*i, 557, 0, 0, 0, 0, 0, PI/2, false, 25, 4);
  }
  for (int i=0; i<dominos_top.length; i++) {
    dominos_top[i] = new Rail(623 + 15*i, 170, 0, 0, 0, 0, 0, PI/2, false, 25, 4);
  }

  r1 = rail1.createRail();
  d1 = domino1.createRail();
  d2 = domino2.createRail();
  d3 = domino3.createRail();
  d4 = dominos_under[0].createRail();
  r_stopper = stop.createRail();
  rn = railn.createRail();
  rFn = _rFn.createRail();

  world.add(r1);
  world.add(d1);
  world.add(d2);
  world.add(d3);
  world.add(d4);
  rail4 = new Rail(300, 500, 0, 0, 0, 0, 0, PI/16, true, 400, 10);
  world.add(r_stopper);
  rail2.add();
  rail3.add();
  rail4.add();
  rail5.add();
  rail6.add();
  rail7.add();
  rail9.add();
  railbox1.add();
  railbox2.add();
  railbox3.add();
  for (int i=0; i<dominos_top.length; i++) {
    dominos_top[i].add();
  }
  for (int i=1; i<dominos_under.length; i++) {
    dominos_under[i].add();
  }
}
