int x = 50;
int y = 50;
String something = "write joyelam";
PImage webImg;

void setup() 
{
  size(1400, 700);
  String url = "http://friday.westnet.com/~crywalt/dymaxion_2003/earthmap10k.reduced.jpg";
  webImg = loadImage(url, "png");
}

void draw() 
{
  text("HELLO GRACEFULPOTATO!", 500, 50);
  fill(255, 0, 0);
  ellipse(width/2, height/2, x, y);
  background(255);
  image(webImg, 0, 0, 1400, 700);
  fill(0);

}

