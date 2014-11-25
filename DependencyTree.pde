int x2 = 256/2;
int y2 = 171/2;
int x3 = (100*10)/9;
int y3 = ((267/4)*10)/9;
int x4 = (192*3)/4;
int y4 = (95*3)/4;
String something = "write joyelam";
PImage ImgOne;
PImage ImgTwo;
PImage ImgThree;
PImage ImgFour;
void setup() 
{
  size(1400, 700);
  //String urlOne = "http://friday.westnet.com/~crywalt/dymaxion_2003/earthmap10k.reduced.jpg";
 
  //webImgOne = loadImage(urlOne, "png");
  ImgOne = loadImage("background.jpg");
  ImgTwo = loadImage("la.png");
  ImgThree = loadImage("caflagb.gif");
  ImgFour = loadImage("cuba-flag.gif");

}

void draw() 
{
  fill(0);
  text("HELLO GRACEFULPOTATO!", 500, 50);
  background(255);
  image(ImgOne, 0, 0, 1400, 700);
  image(ImgTwo, 1080, 250, x2, y2); //Laos
  image(ImgThree, 210, 180, x3, y3); //California
  image(ImgFour, 380, 250, x4, y4); //Cuba
  //image(webImgOne, 0, 0, 1400, 700);
  

}

