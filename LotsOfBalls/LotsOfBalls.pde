//declare variables
float x;
float y;
float velX;
float velY;
float diam;
float z; 
float w;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  x = width/2;
    x = width/2;
  y = height/2;
  y = height/2;
  diam = 80;
  diam = 80;
  velX = random(-5, 5);
  velX = random(-5, 5);
  velY = random(-5, 5);
  velY = random(-5, 5);
}

void draw() {
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(x, y, diam, diam);
  ellipse(x, y, diam, diam);
  ellipse(z,w,diam,diam);

  //add velocity to position
  x += velX;
   x += velX;
  y += velY;
  y += velY;

  //bounce ball if it hits walls
  if (x + diam/2 >= width) {
    velX = -abs(velX);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
  }
   if (x + diam/2 >= width) {
    velX = -abs(velX);    
  } else if (x - diam/2 <= 0) {
    velX = abs(velX);     
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
  if (y + diam/2 >= height) {
    velY = -abs(velY);
  } else if (y - diam/2 <= 0) {
    velY = abs(velY);
  }
}