import fisica.*;

FWorld world;

FBody r1, r_stopper, rn, rFn, b1, bF, b_stop, t1, c1, d1, d2, d3, d4, dF1, dF2, dF3, ss;
int contact = 0;

void setup() {
  size(1024, 576);
  frameRate(60);
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 300);
  world.setEdges();
  world.remove(world.top);
  world.setEdgesRestitution(0.5);
  
  railInit();
  ballInit();
  totsuInit();
  ropeInit();
  seesawInit();
}

void draw() {
  println(mouseX + "," + mouseY);
  background(255);
  world.step();
  world.draw();
  text();
}

void mousePressed() {
  world.remove(r1);
}
