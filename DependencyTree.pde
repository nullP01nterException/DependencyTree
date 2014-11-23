int x2 = 256/2;
int y2 = 171/2;
int x3 = (100*10)/9;
int y3 = ((267/4)*10)/9;
int x4 = (192*3)/4;
int y4 = (95*3)/4;
String something = "write joyelam";
PImage webImgOne;
PImage webImgTwo;
PImage webImgThree;
PImage webImgFour;
void setup() 
{
  size(1400, 700);
  String urlOne = "http://friday.westnet.com/~crywalt/dymaxion_2003/earthmap10k.reduced.jpg";
  String urlTwo = "http://flagpedia.net/data/flags/ultra/la.png";
  String urlThree = "http://www.worldatlas.com/webimage/flags/usa/caflagb.gif";
  String urlFour = "http://www.mapsofworld.com/images/world-countries-flags/cuba-flag.gif";
  webImgOne = loadImage(urlOne, "png");
  webImgTwo = loadImage(urlTwo, "png");
  webImgThree = loadImage(urlThree, "png");
  webImgFour = loadImage(urlFour, "png");
}

void draw() 
{
  fill(0);
  text("HELLO GRACEFULPOTATO!", 500, 50);
  fill(255, 0, 0);
  ellipse(width/2, height/2, x, y);
  background(255);
  image(webImgOne, 0, 0, 1400, 700);
  image(webImgTwo, 1080, 250, x2, y2); //Laos
  image(webImgThree, 210, 180, x3, y3; //California
  image(webImgFour, 380, 250, x4, y4); //Cuba
  //strokeWeight(10);
  //stroke(255,0,0); 
  //noFill();
  //rect(1050, 210, x, y);
  //rect(180, 160, x, y);

}

