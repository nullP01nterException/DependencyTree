int x2 = 256/2;
int y2 = 171/2;
int x3 = (100*10)/9;
int y3 = ((267/4)*10)/9;
int x4 = (192*3)/4;
int y4 = (95*3)/4;
String something = "write joyelam";
//sPImage webImgOne;

void setup() 
{
  size(1400, 700);
  //String urlOne = "http://friday.westnet.com/~crywalt/dymaxion_2003/earthmap10k.reduced.jpg";
 
  //webImgOne = loadImage(urlOne, "png");

}

void draw() 
{
  fill(0);
  text("HELLO GRACEFULPOTATO!", 500, 50);
  fill(255, 0, 0);
  ellipse(width/2, height/2, x, y);
  background(255);
  //image(webImgOne, 0, 0, 1400, 700);
  

}

