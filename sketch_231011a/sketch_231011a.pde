//global variables
float r = 135;
float g = 206;
float b = 235;
float r1 = 135;
float g1 = 206;
float b1 = 235;
float time = 0;
Star[] Stars;
Track track1;
//making objects from constructors
Building Skyscraper;
Building Skyscraper2;
Building House;
SunAndMoon Sun;
Car Car1;
Car Car2;

void setup() {
  //screen size
  size(1200, 700);
  //initializing
  
  Skyscraper = new Building(230, 300, 400, 400, 20, 40,30,60,255,0,0,1);
  Skyscraper2 = new Building(550, 270, 200, 480, 20, 40,20,40,128,128,128,0);
  House = new Building(725, 425, 100, 150, 10, 20, 20, 30, 0, 255, 255,1);
  Sun = new SunAndMoon();
  Car1 = new Car(0,520,40,20,255,255,0);
  Car2 = new Car(1200,575,40,20,0,255,0);
  Stars = new Star[30];
  track1 = new Track(0,650,60);
  for (int i=0; i < 30; i++){
    Stars[i] = new Star(int(random(0,1200)),int(random(0,600)));
    Stars[i].drawStar();
  }
  
}
void draw() {
  //setting time
  time = time +1;
  if (time == 1440) {
    time = 0;
  }
  background(r, g, b);
  if (time <= 432) {
    r = 135;
    g = 206;
    b = 235;
  }
  if (time >432 && time <=576) {
    r += 0.71527777777;
    g -= 0.78472222222;
    b -= 0.88194444444;
  }
  if (time >576 && time <=720) {
    r -= 1.65277777778;
    g -= 0.64583333333;
    b -= 0.75;
  }
  if (time >1152 && time <=1296) {
    r += 1.65277777778;
    g += 0.64583333333;
    b += 0.75;
  }
  if (time >1296 && time <=1440) {
    r -= 0.71527777777;
    g += 0.78472222222;
    b += 0.88194444444;
  }
  for (int i=0; i < 30; i++){
    Stars[i].drawStar();
  }
  strokeWeight(1);
  if (time >0 && time <= 720){
    r1 = r;
    b1 = g;
    g1 = b;
   }
  if (time >720 && time <= 1440){
    r1 = 255;
    b1 = 255;
    g1 = 255;
  }
  Sun.drawSunAndMoon();
  Skyscraper.drawBuilding();
  Skyscraper2.drawBuilding();
  House.drawBuilding();
  fill(90,90,90);
  rect(600,550,12000,100);
  fill(255,255,0);
  stroke(255,255,0);
  rect(50,550,40,15);
  rect(150,550,40,15);
  rect(250,550,40,15);
  rect(350,550,40,15);
  rect(450,550,40,15);
  rect(550,550,40,15);
  rect(650,550,40,15);
  rect(750,550,40,15);
  rect(850,550,40,15);
  rect(950,550,40,15);
  rect(1050,550,40,15);
  rect(1150,550,40,15);
  stroke(0);
  Car1.drawCar();
  Car1.Move();
  Car2.drawCar();
  Car2.Move();
  fill(#567D46);
  stroke(#567D46);
  rect(600,650,1200,100);
  track1.drawTrack();
}
