class Track{
  int trackH;
  int trackX;
  int trackY;
  Track(int TX, int TY, int TH){
    trackH = TH;
    trackX  = TX;
    trackY = TY;
  }
  void drawTrack(){
    fill(#c5a172);
    trackX = 20;
    for(int i = 0; i < 1200; i+= 40){
      rect(trackX, trackY, 20, trackH);
      trackX +=40;
    }
  }
      
      
  




}
