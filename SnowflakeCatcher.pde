Snowflake[] snowStorm;
int snowX= (int)(Math.random()*501);
int snowY= (int)(Math.random()*501-500);


void setup()
{
  size(500, 500);
  snowStorm = new Snowflake[1000];
  background(25,25,112);

  
  for (int i= 0; i<snowStorm.length;i++){
    snowStorm[i] =new Snowflake(snowX,snowY);
  }
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
void mouseDragged()
{
  //your code here
}

class Snowflake

{

  int myX,myY;
  boolean isMoving;
  
  Snowflake(int x,int y)
  {
    x=(int)(Math.random()*501);
    y=(int)(Math.random()*501-500);
    myX=x;
    myY=y;
    isMoving= true;
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(myX, myY, 5, 5);
    
  }
  void lookDown()
  {
    if (myY>500){

      isMoving=false;
    }
    else{
      isMoving=true;
    }
  }
  void erase()
  {
    noStroke();
    fill(25,25,112);
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
    if(isMoving==false){
      myY=0;
    }
  
  }

}


