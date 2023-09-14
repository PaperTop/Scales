int w = 30;
int h = 40;
void setup() {
  size(1000, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  //your code here
  stroke(255);
  for(int i = 460; i >= -40; i -= 20){
    for(int j = 970; j >= -60; j -= 30){
      koiColors();
      scale(j,i);
    }
  }
}
void koiColors() {
  double random = Math.random();
  if (random < 0.3){
    fill(0,0,0);
  } else if (random < 0.5){
    fill(255,255,255);
  } else if (random < 0.7){
    fill(255,0,0);
  } else if (random <0.85) {
    fill(255,255,0);
  } else {
    fill(100,100,100);
  }
}
void scale(int x, int y) {
  //your code here
  rect(x,y,w,h); 
  arc(x + w/2, y + h, w, h/2, 0, PI);
}

