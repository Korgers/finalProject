float ballX;
float ballY;
float radius;
float ballSpeed;

void setup() {
  size(800, 1000);

  ballX = 400;
  ballY = 90;
  radius = 25;
  ballSpeed = 6;
}

void draw() {
  background(0);
  noStroke();
  ellipse(ballX, ballY, radius*2, radius*2); 
  ballY+=.01;
  ballX-=1;

  if ( (keyCode == LEFT) ) {
    ballX-=5;
  }

  if ( (keyCode == RIGHT) ) {
    ballX+=5;
  }

  if (ballY>900 || ballY <4) {
    ballSpeed = ballSpeed* -1;
  }
  if (ballX>900 || ballX <4) {
    ballSpeed = ballSpeed* -1;
  }
}

void keyPressed()
{
  if ( (keyCode == LEFT) )
  {
    // ballX = ballX - ballSpeed;
    //ballSpeed-=2;
    ballX-=5;
  }

  if ( (keyCode == RIGHT) )
  {
    // ballX = ballX + ballSpeed;
    ballX+=5;
  }

  if ( (keyCode == UP) )
  {
    ballY = ballY - ballSpeed;
    //ballSpeed-=2;
  }

  if ( (keyCode == DOWN) ) {
    ballY = ballY + ballSpeed;
    //ballSpeed+=2;
  }
}
