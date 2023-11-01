//car is a child class of vehicle
class Car extends Vehicle{
  //car variables
  int carR;
  int carG;
  int carB;
  int carW;
  int carH;
  
  //car constructor
  Car(int CX, int CY, int CW, int CH, int CR, int CG, int CB){
    carR = CR;
    carG = CG;
    carB = CB;
    carW = CW;
    carH = CH;
    carX = CX;
    carY = CY;
  }
  //method to draw car
  void drawCar(){
    rectMode(CENTER);
    //edts carx by adding xspeed
    carX = carX +xspeed;
    fill(carR,carG,carB);
    stroke(carR,carG,carB);
    rect(carX + xspeed,carY,carW,carH);
    fill(83,200,244);
    stroke(83,200,244);
    rect(carX+xspeed,carY,carW/1.5,carH/1.5);
    fill(0);
    stroke(0);
    ellipse(carX-carW/2+xspeed,carY+carH/2,carW/2,carW/2);
    ellipse(carX+carW/2+xspeed,carY+carH/2,carW/2,carW/2);
   
    
    
    
  }













}
