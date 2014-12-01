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
PImage ImgOne;
PImage ImgTwo;
PImage ImgThree;
PImage ImgFour;
boolean laos = false;
boolean calif = false;
boolean cuba = false;

//int celiaX = 100;
//int celiaY = 100;
//int jorgeX = 250;
//int jorgeY = 100;
ArrayList<Integer> dreaming = new ArrayList<Integer>();


void setup() 
{
  dreaming.add(100);
  dreaming.add(100);
  dreaming.add(300);
  dreaming.add(100);
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
  } else if (calif)
  {
    background(0, 0, 255);
    textSize(30);
    text("Bad Indians: A Tribal Memoir", 20, 40);
  } else if (cuba)
  {
    background(0, 255, 0);
    textSize(30);
    fill(0);
    text("Dreaming in Cuban: A Novel", 20, 40);
    
    
    fill(255);
    textSize(20);
    stroke(0);
    rect(dreaming.get(0)-10, dreaming.get(1)-20, 150, 20);
    rect(dreaming.get(2)-10,dreaming.get(3)-20,150,20);
    
    fill(0);
    text("Celia Del Pino", dreaming.get(0), dreaming.get(1));
    text("Jorge Del Pino", dreaming.get(2), dreaming.get(3));
    //text("Lourdes Puente", lourdesX, lourdesY);
    //text("Rufino Puente", rufinoX, rufinoY);
    //text("Pilar Puente", pilarX, pilarY);
    //text("Felicia Villaverde", feliciaX, feliciaY);
    //text("Hugo Villaverde", hugoX, hugoY);
    //text("Luz and Milagro Villaverde", luzX, luzY);
    //text("Ivanito Villaverde", ivanitoX, ivanitoY);
    //text("Javier Del Pino", javierX, javierY);
    //text("Irina Novotny", irinaX,irinaY);
    //text("Irinita Del Pino", irinitaX, irinitaY);
    //text("Ernesto Brito", ernestoX, ernestoY);
    //text("Otto Cruz", ottoX, ottoY);
    //text("Herminia Delgado", herminiaX, herminiaY);
 
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

void mousePressed()
{

  if (mouseX > dimX2 && mouseX < dimX2+x2 && mouseY>dimY2 && mouseY<dimY2+y2)
  {
    laos = true;
  } else if (mouseX > dimX3 && mouseX < dimX3+x3 && mouseY > dimY3 &&mouseY < dimY3+y3)
  {
    calif = true;
  } else if (mouseX > dimX4 && mouseX < dimX4+x4 && mouseY >dimY4 && mouseY < dimY4+y4)
  {
    cuba = true;
  }
  if (mouseX > 1250*5/7 && mouseX < (1250+120)*5/7 && mouseY > 625*5/7+100&&mouseY < 675*5/7+100 )
  {
    laos = false;
    calif = false;
    cuba = false;
  }
}

