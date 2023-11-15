class Marker{
  float x1;
  float y1;
  //marker doen't need many variables
  Marker(float xin, float yin){
    x1 = xin;
    y1 = yin;
  }    
  void mark(){
    if(finished == 0){
      //making sure user is coloring inside box
      if(mouseX > 595 && mouseX < 605 & mouseY > 295 && mouseY < 305){
        if(mousePressed){    
          x1 = mouseX;
          y1 = mouseY;
          strokeWeight(0);
          fill(r2,g2,b2);
          stroke(r2,g2,b2);
          rect(x1,y1,10,10); 
        }
      }
    } 
  }
}
