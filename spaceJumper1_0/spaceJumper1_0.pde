float ballX;
float ballY;
float radius;
float ballSpeed;
int score;
int level;
int startScreen;

Platform p[]=new Platform[4];


void setup() {
  size(800, 1000);
  ballX = 400;
  ballY = 899;
  radius = 25;
  ballSpeed = 6;
  startScreen=0;
  level=1;

  for (int i=0; i<4; i++) {
    p[i]=new Platform((int)(Math.random()*700)+100, (int)(Math.random()*700)+100, 200, 20);
  }
}

void draw() {
  background(0);
  noStroke();
  ellipse(ballX, ballY, radius*2, radius*2); 

  if ( (keyCode == LEFT) ) {
    ballX-=4;
  }

  if ( (keyCode == RIGHT) ) {
    ballX+=4;
  }

  ballY= ballY - ballSpeed;
  if (ballY<=0) {
    ballSpeed= ballSpeed* -1;
  } 
  if (ballX<0) {
    ballX=ballX+6;
  }
  if (ballX>800) {
    ballX=ballX-6;
  }
  textSize(70);
  text("Score:"+score, 270, 900);
  textSize(30);
  text("Level:"+level, 350, 830);

  for (int i=0; i<4; i++) {
    p[i].display();
    p[i].move();
    p[i].bounce();
  }
  if (ballY>1000) {
    textSize(100);
    text("Game Over", 150, 300);
  }

  if (startScreen==0&&score<3) {
    textSize(30);
    text("-Click on screen!!! \n-Use <- & -> to move the ball\n-Bounce off of platforms to score \n-A new level begins after every 5 scores", 200, 450);
  }
}
