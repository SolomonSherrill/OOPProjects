class Button{
  //x value
  float x1;
  //y value
  float y1;
  //rgb values
  float r1;
  float g1;
  float b1;
  //width
  float w1;
  //height
  float h1;
  Button(float xin, float yin, float win, float hin, float rin, float gin, float bin){
    x1 = xin;
    y1 = yin;
    w1 = win;
    h1 = hin;
    r1 = rin;
    g1 = gin;
    b1 = bin;
  }
  void function(){
    strokeWeight(1);
    rectMode(CENTER);
    fill(r1,g1,b1);
    //making hover color
    if(mouseX >= x1-w1/2 && mouseX<= x1 + w1/2 && mouseY >= y1 - h1/2 && mouseY <= y1 +h1/2){
      stroke(255);
    }
    else{
      stroke(0);
    }
    //creating button rect
    rect(x1,y1,w1,h1);
  }
  void check(){
    //checking if boxes are clicked
    if(finished == 0){
      if (mousePressed){
        if (mouseX >= x1-w1/2 && mouseX<= x1 + w1/2 && mouseY >= y1 - h1/2 && mouseY <= y1 +h1/2){
            r2 = r1;
            g2 = g1;
            b2 = b1;
        }
      }
    }
  }
}
