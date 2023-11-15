class Box{
  //variables for class
  //x and y
  int x;
  int y;
  //width and height
  int w;
  int h;
  //making a random color get selected
  float selector = int(random(1,9));
  //color values
  int r;
  int g;
  int b;
  color c;
  Box(int xin, int yin, int win, int hin){
    x = xin;
    y = yin;
    w = win;
    h = hin;
  }
  void work(){
    strokeWeight(1);
    rectMode(CENTER);
    ellipseMode(CENTER);
    //creating box to fill
    fill(255);
    rect(x,y,w,h);
    //making "finish" ellipse
    fill(0,255,0);
    ellipse(600,550,100,50);
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("check",600,560);
    //making randomly selected color to color box with
    if (selector == 1){
      fill(0);
      text("black",70,50);
      r = 0;
      g = 0;
      b = 0;
    }
    if (selector == 2){
      fill(255,0,0);
      text("red",70,50);
      r = 255;
      g = 0;
      b = 0;
    }
    if (selector == 3){
      fill(255,165,0);
      text("orange",70,50);
      r = 255;
      g = 165;
      b = 0;
    }
    if (selector == 4){
      fill(255,255,0);
      text("yellow",70,50);
      r = 255;
      g = 255;
      b = 0;
    }
    if (selector == 5){
      fill(0,255,0);
      text("green",70,50);
      r = 0;
      g = 255;
      b = 0;
    }
    if (selector == 6){
      fill(0,0,255);
      text("blue",70,50);
      r = 0;
      g = 0;
      b = 255;
    }
    if (selector == 7){
      fill(127,0,255);
      text("purple",70,50);
      r = 127;
      g = 0;
      b = 255;
    }
    if (selector == 8){
      fill(255,0,255);
      text("pink",70,50);
      r = 255;
      g = 0;
      b = 255;
    }
  }
  void check(){
    //bounding box
    if(mouseX >= 550 && mouseX <= 650 && mouseY >= 525 && mouseY <= 575){
      if(mousePressed){
        colorMode(RGB);
        //making sure box is fully colored with the right color
        if(get(600,300) == color(r,g,b) && get(595,295) == color(r,g,b) && get(605,295) == color(r,g,b) && get(605,305) == color(r,g,b) && get(595,305) == color(r,g,b)){
          //making it so that you can only view when you win
          finished+=1;
          fill(255);
          text("you won!!" ,600,200);
        }
      }
    }
  }
}
