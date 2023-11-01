class Star{
  int starX;
  int starY;
  Star(int SX, int SY){
    starX = SX;
    starY = SY;
  }
  void drawStar(){
    strokeWeight(0);
    fill(r1,b1,g1);
    stroke(r1,g1,b1);
    circle(starX, starY, 5);
  }













}
