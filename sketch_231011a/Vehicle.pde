class Vehicle{
  float carX;
  float carY;
  float xspeed;
  void Move(){
      //checks cars position to set whether it should be going forward or backward (if its at the right end go left, if its at the left end go right)
      if (carX >= 1200){
        xspeed = -10;
      }
      else if (carX <=0){
        xspeed = 10;
      } 
  }
     
  
  
  
  
  
  
}
