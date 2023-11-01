class Building{
  //building variables
  int x;
  int y;
  int width1;
  int height1;
  int x2;
  int y2;
  int width2;
  int height2;
  int r1;
  int g1;
  int b1;
  int tophat;
  //building constructor
  Building(int xin, int yin, int w, int h, int xin2, int yin2, int w2, int h2, int rin, int gin, int bin, int th){
    x=xin;
    y=yin;
    width1 = w;
    height1 = h;
    x2=xin2;
    y2=yin2;
    width2=w2;
    height2=h2;
    r1=rin;
    g1=gin;
    b1=bin;
    tophat = th;
  }
  //method to draw building with windows
  void drawBuilding(){
  rectMode(CENTER);
  fill(r1,b1,g1);
  stroke(0);
  rect(x , y, width1,height1);
  for (int l = y-height1/2+y2; l < y+height1/2; l+=height2){
    for (int k = x-width1/2+x2; k < x+width1/2; k+=width2){
      fill(83,200,244);
      stroke(3);
      rect(k,l,x2,y2);
    }
  }
  fill(108,70,32);
  rect(x,y+height1/2-height1/10,width1/5,height1/5);
  line(x,y+height1/2,x,y+height1/2-height1/5);
  fill(0);
  circle(x-width1/35,y+height1/2-height1/10,width1/50);
  circle(x+width1/35,y+height1/2-height1/10,width1/50);
  if (tophat == 1){ 
    rectMode(CENTER);
    fill(r1,b1,g1);
    triangle(x-(width1/2),y-(height1/2),x+width1/2,y-height1/2,x,y-height1/1.5);
  }
}

  


} 
