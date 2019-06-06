class Platform {
  int x;
  int y;
  int w;
  int h;
  
  boolean speed=true;
  public Platform(int x, int y, int w, int h) {
    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
  }

  void display() {
    fill(255, 0, 0);
    rect(x, y, w, h);
  }

  void move() {
    //moving platform
    if (x<600 && speed==true) {
      x+=(int)(Math.random()*10)+1;
    }
    if (x>=600) {
      speed=false;
    }
    if (x>0&&speed==false) {
      x-=(int)(Math.random()*10)+1;
    }
    if (x<=0&&speed==false) {
      speed=true;
    }
    }
  void bounce(){
    //bouncing off of platforms
    if((ballX>x&&ballX<x+200)&&(ballY>y-20)&&(ballY<y)&&(ballSpeed<0)){
      ballSpeed=ballSpeed*-1;
      score++;
    if(score%5==0){
      level++;
      for (int i=0; i<4; i++) {
          p[i]=new Platform((int)(Math.random()*700)+100, (int)(Math.random()*700)+100, 200, 20);
  }
    }
  }
  }}
