Snowflake[] snowStorm;
int snowX= (int)(Math.random()*501);
int snowY= (int)(Math.random()*501-500);
int snowRed = 255;
int snowBlue =255;
int snowGreen =255;


void setup()
{
  size(500, 500);
  snowStorm = new Snowflake[1000];
  background(4,9,84);

  
  for (int i= 0; i<snowStorm.length;i++){
    snowStorm[i] =new Snowflake(snowX,snowY,snowRed,snowBlue,snowGreen);
  }
}
void mouseDragged()
{
  noStroke();
  fill(200);
  ellipse(mouseX, mouseY, 10, 10);

  
}
void draw()
{
  for (int i= 0; i<snowStorm.length;i++){
   snowStorm[i].erase();
   snowStorm[i].lookDown();
   snowStorm[i].move();
   snowStorm[i].wrap();
   snowStorm[i].show();
  }
}


class Snowflake

{
  int myX,myY,snowR,snowG,snowB;
  boolean isMoving;
  
  Snowflake(int x,int y,int r, int g, int b)
  {
    x=(int)(Math.random()*501);
    y=(int)(Math.random()*501-500);
    r=255;
    g=255;
    b=255;

    snowR=r;
    snowG=g;
    snowB=b;
    myX=x;
    myY=y;
    isMoving= true;
  }
  void show()
  {
    snowR=255;
    snowG=255;
    snowB=255;
    noStroke();
    fill(snowR,snowG,snowB);
    ellipse(myX, myY, 5, 5);
    
  }
  void lookDown()
  {
    if (get(myX,myY+10)==color(200)){

      isMoving=false;
    }
   
    else{
      isMoving=true;
    }
  }
  void erase()
  {
    noStroke();
    fill(2,10,84);
    ellipse(myX, myY, 7, 7);
  }
  void move()
  {
   if(isMoving==true){
    myY=myY+2;
    }
  }
  void wrap()
  {
    if(myY>500){
      myY=0;
    }
  }
    
}
  




