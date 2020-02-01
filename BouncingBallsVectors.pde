Ball [] ball = new Ball[10];
int diameter;
PImage [] imgBall;
void setup() { 
  size(1280, 750, P3D);
  imgBall = new PImage[13];
  for (int i = 0; i < imgBall.length; i++) {
    imgBall[i] = loadImage("ball"+i+".png");
  }
  for (int i = 0; i < ball.length; i++) {
    diameter = (int)random(80, 100);
    ball[i] = new Ball (2, 3.5, diameter, imgBall[(int)random(0, imgBall.length)]);
  }
  background(50);
}
void draw() {
  background(#F5C420);
  for (int i = 0; i < ball.length; i++) {
    ball[i].update();
    if(mousePressed == true) {
      ball[i].fall();
    } else {
        ball[i].bounce();
        ball[i].update();
      }
    //ball[i].drawBall();
    ball[i].drawImage();
    }
    
    
}
