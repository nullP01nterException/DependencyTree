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

int celiaX = 100;
int celiaY = 100;
int jorgeX = 250;
int jorgeY = 100;
//ArrayList dreamingCharacters = new ArrayList;
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
    rect(celiaX-10, celiaY-20, 150, 20);
    rect(jorgeX-10,jorgeY-20,150,20);
    
    fill(0);
    text("Celia Del Pino", celiaX, celiaY);
    text("Jorge Del Pino", jorgeX, jorgeY);
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
    triangle(1250, 600, 1250, 700, 1200, 650);
    textSize(20);
    fill(0);
    text("Back to\nmain menu", 1250, 640);
  }
}

void mousePressed()
{

  if (mouseX > 1080 && mouseX < 1080+x2 && mouseY>250 && mouseY<250+y2)
  {
    laos = true;
  } else if (mouseX > 210 && mouseX < 210+x3 && mouseY > 180 &&mouseY < 180+y3)
  {
    calif = true;
  } else if (mouseX > 380 && mouseX < 380+x4 && mouseY >250 && mouseY < 250+y4)
  {
    cuba = true;
  }
  if (mouseX > 1250 && mouseX < 1250+120 && mouseY > 625&&mouseY < 675 )
  {
    laos = false;
    calif = false;
    cuba = false;
  }
}

