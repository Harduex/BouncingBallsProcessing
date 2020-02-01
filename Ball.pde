class Ball {

  float diameter, radius, rDist, strWeight;
  //float x, y;
  PVector location;
  //float xSpeed, ySpeed;
  PVector velocity;
  int Color;
  PImage img;
  float distance;

  Ball(float From, float To, int Diameter, int StrWeight) {
    diameter = Diameter;
    radius = diameter/2;
    strWeight = StrWeight;
    Color = color((int)random(255), (int)random(255), (int)random(255));
    //x = random(diameter, width - diameter);
    //y = random(diameter, height - diameter);
    location = new PVector(random(diameter, width - diameter), random(diameter, height - diameter));
    //xSpeed = XSpeed;
    //ySpeed = YSpeed;
    velocity = new PVector();
    setSpeed(From, To);
    //velocity = new PVector(From, To);
  }
  Ball(float From, float To, int Diameter, PImage Img) {
    img = Img;
    diameter = Diameter;
    radius = diameter/2;
    //x = random(diameter, width - diameter);
    //y = random(diameter, height - diameter);
    location = new PVector(random(diameter, width - diameter), random(diameter, height - diameter));
    velocity = new PVector();
    setSpeed(From, To);
    //velocity = new PVector(From, To);
  }

  void setSpeed(float From, float To) {
    velocity.x = random(From, To);
    velocity.y = random(From, To);
  }

  void drawBall() {
    ellipse(location.x, location.y, diameter, diameter);
    fill(Color);
    stroke(#0A0000);
    strokeWeight(strWeight);
  }
  void drawImage() {
    imageMode(CENTER);
    image(img, location.x, location.y, diameter, diameter);
  }

  void update() {
    //x += xSpeed;
    //y += ySpeed;
    location.add(velocity);
  }

  void fall() {
    if (location.x + radius > width || location.x < 0 + radius) {
      velocity.x = 0;
      velocity.y = 10;
    }
    if (location.y < 0 + radius) {
      velocity.x = 0;
      velocity.y = 10;
    }
    if (location.y + radius > height) {
      velocity.x = 0;
      velocity.y = 0;
    }
  }

  void bounce() {
    if (location.x + radius > width || location.x < 0  + radius) {
      velocity.x *= -1;
    }
    if (location.y + radius > height || location.y < 0 + radius ) {
      velocity.y *= -1;
    }
  }
}
