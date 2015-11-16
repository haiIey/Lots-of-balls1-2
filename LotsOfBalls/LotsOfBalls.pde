//declare variables
<<<<<<< HEAD
float x;
float y;
float velX;
float velY;
float diam;
float z; 
float w;
=======
int count = 400; // how  many balls

float [] x = new float [count];
float [] y = new float [count];
float [] velX = new float [count];
float [] velY = new float [count];
float [] diam = new float [count];
// create array
>>>>>>> refs/remotes/origin/New-branch-name

void setup() {
  //set size of canvas
  size(800, 600);
<<<<<<< HEAD

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

=======
  
for (int i= 0; i < count; i++) {
   x[i] = random(width);
   y[i] = random(height);
   diam[i] = random(10,50);
   velX[i] = random(5);
   velY[i] = random(5);
     }
   }
     
>>>>>>> refs/remotes/origin/New-branch-name
void draw() {
  //draw background to cover previous frame
  background(0);
 
  //draw ball
<<<<<<< HEAD
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
=======
 for (int i = 0; i < count; i++) {
   ellipse(x[i], y[i], diam[i], diam[i]);
   x[i] += velX[i];
   y[i] += velY[i];
  
  if (x[i] + diam[i] >= width) {
    velX[i] = -abs(velX[i]);    //if the ball hits the right wall, assign x velocity the negative version of itself
  } else if (x[i] - diam[i]/2 <= 0) {
    velX[i] = abs(velX[i]); //if the ball hits the left wall, assign x velocity the positive version of itself
  }
  
  if (y[i] + diam[i]/2 >= 600) {
    velY[i] = -abs(velY[i]);
    y[i] = 600 - diam[i];
  } else if (y[i] - diam[i] <= 0) {
    velY[i] = abs(velY[i]);
>>>>>>> refs/remotes/origin/New-branch-name
  }
 }
}