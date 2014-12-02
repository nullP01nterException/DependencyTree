import java.util.*;
int x2 = 256/2*5/7;
int y2 = 171/2*5/7;
int x3 = (100*10)/9*5/7;
int y3 = ((267/4)*10)/9*5/7;
int x4 = (192*3)/4*5/7;
int y4 = (95*3)/4*5/7;
int dimX2 = 1080*5/7;
int dimY2 = 250*5/7 + 100;
int dimX3 = 210*5/7;
int dimY3 = 180*5/7+100;
int dimX4 = 380*5/7;
int dimY4 = 250*5/7+100;
int layer1 = 100;
int layer2 = 225;
int layer3 = 350;
int layer4 = 475;
PImage ImgOne;
PImage ImgTwo;
PImage ImgThree;
PImage ImgFour;
boolean laos = false;
boolean calif = false;
boolean cuba = false;
ArrayList<Integer> dreaming = new ArrayList<Integer>();
ArrayList<Integer> indians = new ArrayList<Integer>();
ArrayList<Integer> spirit = new ArrayList<Integer>();

void setup() 
{  
  size(1000, 700);
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
    textSize(30);
    text("The Spirit Catches You and You Fall Down:\nA Hmong Child, Her American Doctors, and\nthe Collision of Two Cultures", 20, 40);
    spiritCatches();  
} else if (calif)
  {
    background(0, 0, 255);
    textSize(30);
    text("Bad Indians: A Tribal Memoir", 20, 40);
    badIndians();
  } else if (cuba)
  {
    background(0, 255, 0);
    textSize(30);
    fill(0);
    text("Dreaming in Cuban: A Novel", 20, 40);   
    dreamingCuban();
  } else
  {
    background(0,0,0,0);
    image(ImgOne, 0, 100, 1000, 500);
    image(ImgTwo, dimX2, dimY2, x2, y2); //Laos
    image(ImgThree,dimX3 , dimY3, x3, y3); //California
    image(ImgFour, dimX4, dimY4, x4, y4); //Cuba
  }
  if (laos||calif||cuba)
  {
    noStroke();
    fill(255);
    rect(1250*5/7, 625*5/7+100, 120, 50);
    triangle(1250*5/7, 600*5/7+100, 1250*5/7, 700*5/7+100, 1200*5/7, 650*5/7+100);
    textSize(20);
    fill(0);
    text("Back to\nmain menu", 1250*5/7, 640*5/7+100);
  }
}



