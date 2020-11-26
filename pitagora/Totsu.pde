class Totsu extends Object {

  int LR; 

  Totsu(float _posX, float _posY, float _rest, float _fric, int _r, int _g, int _b, float _angle, boolean _sta, int _LR) {
    super(_posX, _posY, _rest, _fric, _r, _g, _b, _angle, _sta);   
    LR = _LR;
  }

  FCompound createTotsu() {  
    Rail rail1;
    Rail rail2;
    Rail rail3;
    Rail rail4;
    rail1 = new Rail(posX-35, posY+20*2/sqrt(3), 0, 0, 0, 0, 0, 0, true, 50, 5);
    rail2 = new Rail(posX+35, posY+20*2/sqrt(3), 0, 0, 0, 0, 0, 0, true, 50, 5);
    rail3 = new Rail(posX-5, posY+10*2/sqrt(3), 0, 0, 0, 0, 0, -PI/3, true, 25, 5);
    rail4 = new Rail(posX+5, posY+10*2/sqrt(3), 0, 0, 0, 0, 0, PI/3, true, 25, 5);
    FBox a = rail1.createRail();
    FBox b = rail2.createRail();
    FBox c = rail3.createRail();
    FBox d = rail4.createRail();
    FCompound result = new FCompound();
    result.addBody(a);
    result.addBody(b);
    result.addBody(c);
    result.addBody(d);

    return result;
  }

  void createStopper() {
    Ball rstop;
    Ball lstop;
    Ball center;
    rstop = new Ball(posX+30, posY, 0, 0, 0, 0, 0, 0, true, 10);
    lstop = new Ball(posX-30, posY, 0, 0, 0, 0, 0, 0, true, 10);
    center = new Ball(posX, posY+29, 0, 0, 0, 0, 0, 0, true, 10);
    FCircle c = center.createBall();
    FCircle rs = rstop.createBall();
    FCircle ls = lstop.createBall();
    world.add(c);
    if (LR == 0) {
      world.add(rs);
    } else if (LR == 1){
      world.add(ls);
    } 
  }


  void add() {
    FCompound totsu = createTotsu();
    createStopper();
    world.add(totsu);
  }
}

void totsuInit() {
  Totsu totsu1;
  Totsu totsu2;

  totsu1 = new Totsu(230, 150, 0, 0, 0, 0, 0, 0, true, 0);
  totsu2 = new Totsu(120, 250, 0, 0, 0, 0, 0, 0, true, 1);
  
  t1 = totsu1.createTotsu();
  totsu1.createStopper();
  
  world.add(t1);
  totsu2.add();
}
