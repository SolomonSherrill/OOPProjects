//class for the sun and moon
class SunAndMoon{
  //making constructor
  SunAndMoon(){
  
  }
  
  void drawSunAndMoon(){
    //uses push and pop matrix to make only things inside it get affected
    pushMatrix();
    translate(width/2,height);
    //rotates in circle according to time
    rotate(radians(time/1440*360));
    fill(246, 241, 213);
    stroke(246, 241, 213);
    circle(0,width/2,50);
    fill(255,255,0);
    stroke(255,255,0);
    circle(0,-1*width/2,50);
    popMatrix();
  }
  
  
  
  
  
  
  
  
  
  
}
