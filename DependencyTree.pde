int x2 = 256/2;
int y2 = 171/2;
int x3 = (100*10)/9;
int y3 = ((267/4)*10)/9;
int x4 = (192*3)/4;
int y4 = (95*3)/4;
PImage ImgOne;
PImage ImgTwo;
PImage ImgThree;
PImage ImgFour;
boolean laos = false;
boolean calif = false;
boolean cuba = false;
void setup() 
{
  size(1400, 700);
  ImgOne = loadImage("data/background.jpg");
  ImgTwo = loadImage("data/la.png");
  ImgThree = loadImage("data/caflagb.gif");
  ImgFour = loadImage("data/cuba-flag.gif");
}

void draw() 
{ 

  if (laos)
  {
    background(255, 0, 0);
  } else if (calif)
  {
    background(0, 0, 255);
  } else if (cuba)
  {
    background(0, 255, 0);
  } else
  {
    background(255);
    image(ImgOne, 0, 0, 1400, 700);
    image(ImgTwo, 1080, 250, x2, y2); //Laos
    image(ImgThree, 210, 180, x3, y3); //California
    image(ImgFour, 380, 250, x4, y4); //Cuba
  }
  if (laos||calif||cuba)
  {
    noStroke();
    fill(255);
    rect(1250, 625, 120, 50);
    triangle(1250,600,1250,700,1200,650);
    textSize(20);
    fill(0);
    text("Back to\nmain menu", 1250, 640);
  }
}

void mousePressed()
{

    if(mouseX > 1080 && mouseX < 1080+x2 && mouseY>250 && mouseY<250+y2)
    {
      laos = true;
    } else if(mouseX > 210 && mouseX < 210+x3 && mouseY > 180 &&mouseY < 180+y3)
    {
      calif = true;
    } else if(mouseX > 380 && mouseX < 380+x4 && mouseY >250 && mouseY < 250+y4)
    {
      cuba = true;
    }
        if(mouseX > 1250 && mouseX < 1250+120 && mouseY > 625&&mouseY < 675 )
    {
      laos = false;
      calif = false;
      cuba = false;
    }
}

