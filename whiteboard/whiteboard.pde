//creating objects
Button bl1;
Button re1;
Button or1;
Button ye1;
Button gr1;
Button bl2;
Button pu1;
Button pi1;
Marker m1;
Box b1;
//global variables
int finished = 0;
float r2;
float g2;
float b2;
float w3 = 200;
float h3 = 500;;
void setup(){
  colorMode(RGB);
  frameRate(999999);
  //background color
  background(128);
  //screen size
  size(1200,600);
  //making objects origins at center
  rectMode(CENTER);
  ellipseMode(CENTER);
  fill(255);
  stroke(0);
  strokeWeight(0);
  textAlign(CENTER);
  textSize(30);
  text("objective: fill the box with the color given in the upper left", 600,100);
  //giving the objects values
  m1 = new Marker(10000,10000);
  bl1 = new Button(320,50,40,40,0,0,0);
  re1 = new Button(400,50,40,40,255,0,0);
  or1 = new Button(480,50,40,40,255,165,0);
  ye1 = new Button(560,50,40,40,255,255,0);
  gr1 = new Button(640,50,40,40,0,255,0);
  bl2 = new Button(720,50,40,40,0,0,255);
  pu1 = new Button(800,50,40,40,127,0,255);
  pi1 = new Button(880,50,40,40,255,0,255);
  b1 = new Box(600,300,10,10);
  //making box to color spawn
  b1.work();
}
void draw(){
  rectMode(CENTER);
  stroke(0);
  //checking boxes to check if they have been pressed
  bl1.check();
  re1.check();
  or1.check();
  ye1.check();
  gr1.check();
  bl2.check();
  pu1.check();
  pi1.check();
  //making boxes have outlines when hovered over
  bl1.function();
  re1.function();
  or1.function();
  ye1.function();
  gr1.function();
  bl2.function();
  pu1.function();
  pi1.function();
  //making marker work
  m1.mark();
  //checking if finish was pressed
  b1.check();
}
