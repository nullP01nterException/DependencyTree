Sprite thingy = new Sprite();
int scrollX = 0;
int scrollY = 690;
int globY = 0;
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
int layer0 = -150;
int layer1 = -50;
int layer2 = 50;
int layer3 = 150;
int layer4 = 250;
int layer5 = 350;
int layer6 = 450;
int layer7 = 550;
int layer8 = 650;
PImage menu_map;
PImage laos_flag;
PImage cuba_flag;
PImage calif_flag;
PImage grass;
PImage sky;
boolean laos = false;
boolean calif = false;
boolean cuba = false;
ArrayList<Integer> dreaming = new ArrayList<Integer>();
ArrayList<Integer> indians = new ArrayList<Integer>();
ArrayList<Integer> spirit = new ArrayList<Integer>();

public void spiritCatches()
{
  fill(255);
  textSize(20);
  stroke(0);
  spirit.add(width*2/5);  //0  Lia
  spirit.add(layer4);     //1
  spirit.add(width/5);    //2  Foua
  spirit.add(layer3);     //3
  spirit.add(width*3/5);  //4  Nao Kao
  spirit.add(layer3);     //5
  spirit.add(width*2/5);  //6  Fadiman
  spirit.add(layer7);     //7 
  spirit.add(width*3/5);  //8  Cultural Brokers
  spirit.add(layer5);     //9
  spirit.add(width/5);    //10  MCMC
  spirit.add(layer5);     //11
  spirit.add(width/5);    //12  Mai
  spirit.add(layer1);     //13
  spirit.add(width*2/5);  //14  May
  spirit.add(layer1);     //15
  spirit.add(width*3/5);  //16  Yer
  spirit.add(layer1);     //17
  spirit.add(width*4/5);  //18  True
  spirit.add(layer1);     //19
  spirit.add(width/10);   //20  Zoua
  spirit.add(layer2);     //21
  spirit.add(width*3/10); //22  Chong
  spirit.add(layer2);     //23
  spirit.add(width/2);    //24  Pang
  spirit.add(layer2);     //25
  spirit.add(width*7/10); //26  Cheng
  spirit.add(layer2);     //27
  spirit.add(width/10);   //28  Neil & Peggy
  spirit.add(layer6);     //29
  spirit.add(width/10);   //30  Dan Murphy
  spirit.add(layer4);     //31
  spirit.add(width*3/5);  //32  George
  spirit.add(layer7);     //33
  spirit.add(width*3/4); //34  Dan Moua
  spirit.add(layer6);     //35
  spirit.add(width*4/5);  //36  May Ying
  spirit.add(layer5);     //37
  spirit.add(width*7/10); //38  Francesca
  spirit.add(layer4);     //39
  spirit.add(width*11/20); //40  Dwight
  spirit.add(layer6);     //41
  textSize(30);
  fill(0);
  text("The Spirit Catches You and You Fall Down: A Hmong Child, Her\nAmerican Doctors, and the Collision of Two Cultures", 20, 625);
  strokeWeight(4);
  stroke(thingy.spriteR, thingy.spriteG, thingy.spriteB);
  line(width/5, layer3+globY, width*3/5, layer3+globY);
  line(width/2, layer3+globY, width/2, layer4+globY);
  line(spirit.get(6), spirit.get(7)+globY, spirit.get(32), spirit.get(33)+globY);
  int n = 12;
  while (n<28)
  {
    line(width/2, layer3+globY, spirit.get(n), spirit.get(n+1)+globY);
    n+=2;
  }
  int a = 6;
  while (a<12)
  {
    line(width/2, spirit.get(1)+globY, spirit.get(a)+100, spirit.get(a+1)+globY);
    a+=2;
  }
  int b = 34;
  while (b<42)
  {
    line(spirit.get(8)+50, spirit.get(9)+globY, spirit.get(b)+100, spirit.get(b+1)+globY);
    b+=2;
  }
  int d=28;
  while (d<32)
  {
    line(spirit.get(10), spirit.get(11)+globY, spirit.get(d)+100, spirit.get(d+1)+globY);
    d+=2;
  }
  strokeWeight(1);
  fill(0, 255, 0);
  stroke(0, 255, 0);
  int i = 0;
  while (i<42)
  {
    rect(spirit.get(i)-10, spirit.get(i+1)-20+globY, 170, 50);
    i+=2;
  }    
  fill(0);
  textSize(18);
  text("Lia Lee", spirit.get(0), spirit.get(1)+globY);
  text("Foua Yang", spirit.get(2), spirit.get(3)+globY);
  text("Nao Kao Lee", spirit.get(4), spirit.get(5)+globY);
  text("Anne Fadiman", spirit.get(6), spirit.get(7)+globY);
  text("Cultural Brokers", spirit.get(8), spirit.get(9)+globY);
  text("MCMC", spirit.get(10), spirit.get(11)+globY);
  text("Mai Lee", spirit.get(12), spirit.get(13)+globY);
  text("May Lee", spirit.get(14), spirit.get(15)+globY);
  text("Yer Lee", spirit.get(16), spirit.get(17)+globY);
  text("True Lee", spirit.get(18), spirit.get(19)+globY);
  text("Zoua Lee", spirit.get(20), spirit.get(21)+globY);
  text("Chong Lee", spirit.get(22), spirit.get(23)+globY);
  text("Pang Lee", spirit.get(24), spirit.get(25)+globY);
  text("Cheng Lee", spirit.get(26), spirit.get(27)+globY);
  text("Neil Ernst and\nPeggy Philp", spirit.get(28), spirit.get(29)+globY);
  text("Dan Murphy", spirit.get(30), spirit.get(31)+globY);
  text("George Howe Colt", spirit.get(32), spirit.get(33)+globY);
  text("Dan Moua", spirit.get(34), spirit.get(35)+globY);
  text("May Ying", spirit.get(36), spirit.get(37)+globY);
  text("Francesca Farr", spirit.get(38), spirit.get(39)+globY);
  text("Dwight\nConquergood", spirit.get(40), spirit.get(41)+globY);
}

public void dreamingCuban()
{
  dreaming.add(width/5);     // 0  Celia
  dreaming.add(layer2);      // 1
  dreaming.add(width*3/5);   // 2  Jorge
  dreaming.add(layer2);      // 3
  dreaming.add(width/12);    // 4  Lourdes
  dreaming.add(layer5);      // 5
  dreaming.add(width/2);     // 6  Felicia
  dreaming.add(layer5);      // 7
  dreaming.add(width*5/6);   // 8  Javier
  dreaming.add(layer5);      // 9  
  dreaming.add(width/10-80);    // 10  Pilar
  dreaming.add(layer6);      // 11
  dreaming.add(width*3/10-80);  // 12  Ivanito
  dreaming.add(layer6);      // 13
  dreaming.add(width*5/6);  // 14  Irinita
  dreaming.add(layer6);      // 15
  dreaming.add(width/2);     // 16  Luz and Milagro
  dreaming.add(layer7);      // 17  
  dreaming.add(width/40);    // 18 Rufino Puente
  dreaming.add(layer3);      // 19
  dreaming.add(width/2+100);     // 20 Hugo Villaverde
  dreaming.add(layer3);      // 21
  dreaming.add(width*3/10);   // 22 Herminia
  dreaming.add(layer4);      // 23
  dreaming.add(width/2-80);   // 24 Ernesto Brito
  dreaming.add(layer6);      // 25
  dreaming.add(width*7/10-80);   // 26 Otto Cruz
  dreaming.add(layer6);      // 27
  dreaming.add(width*4/5);   // 28 Irina Novotny
  dreaming.add(layer3);      // 29
  dreaming.add(width*2/5);   // 30 Santeria
  dreaming.add(layer1);      // 31
  dreaming.add(width/10);   // 32 El Lider (Fidel Castro)
  dreaming.add(layer1);      // 33
  textSize(30);
  fill(0);
  text("Dreaming in Cuban: A Novel", 20, 675);  
  fill(255);
  textSize(20);
  stroke(thingy.spriteR, thingy.spriteG, thingy.spriteB);
  strokeWeight(4);
  line(dreaming.get(0), dreaming.get(1)+globY, dreaming.get(2), dreaming.get(1)+globY);
  line(dreaming.get(4)+100, dreaming.get(5)+globY, dreaming.get(18)+100, dreaming.get(19)+globY);
  line(dreaming.get(8)+100, dreaming.get(9)+globY, dreaming.get(14)+100, dreaming.get(15)+globY);
  line(dreaming.get(4)+100, dreaming.get(5)+globY, dreaming.get(10)+100, dreaming.get(11)+globY);
  line(dreaming.get(6)+100, dreaming.get(7)+globY, dreaming.get(12)+100, dreaming.get(13)+globY);
  line(dreaming.get(6)+100, dreaming.get(7)+globY, dreaming.get(16)+100, dreaming.get(17)+globY);
  line(dreaming.get(22)+100, dreaming.get(23)+globY, dreaming.get(30)+100, dreaming.get(31)+globY);
  line(dreaming.get(32)+100, dreaming.get(33)+globY, dreaming.get(0)+100, dreaming.get(1)+globY);
  line(dreaming.get(8)+100, dreaming.get(9)+globY, dreaming.get(28)+100, dreaming.get(29)+globY);

  int n=4;
  while (n<10)
  {
    line(width/2, dreaming.get(1)+globY, dreaming.get(n)+100, dreaming.get(n+1)+globY);
    n+=2;
  }
  int f=20;
  while (f<28)
  {
    line(width/2+100, dreaming.get(7)+globY, dreaming.get(f)+100, dreaming.get(f+1)+globY);
    f+=2;
  }

  strokeWeight(1);
  fill(0, 255, 0);
  stroke(0, 255, 0);
  int i = 0;
  while (i<34)
  {
    rect(dreaming.get(i)-10, dreaming.get(i+1)-20+globY, 170, 50);
    i+=2;
  }

  fill(0);
  text("Celia Del Pino", dreaming.get(0), dreaming.get(1)+globY);
  text("Jorge Del Pino", dreaming.get(2), dreaming.get(3)+globY);
  text("Lourdes Puente", dreaming.get(4), dreaming.get(5)+globY);
  text("Felicia Villaverde", dreaming.get(6), dreaming.get(7)+globY);
  text("Javier Del Pino", dreaming.get(8), dreaming.get(9)+globY);
  text("Pilar Puente", dreaming.get(10), dreaming.get(11)+globY);
  text("Ivanito\nVillaverde", dreaming.get(12), dreaming.get(13)+globY-5);
  text("Irinita Del Pino", dreaming.get(14), dreaming.get(15)+globY);
  text("Luz and Milagro\nVillaverde", dreaming.get(16), dreaming.get(17)+globY);
  text("Rufino Puente", dreaming.get(18), dreaming.get(19)+globY);
  text("Hugo Villaverde", dreaming.get(20), dreaming.get(21)+globY);
  text("Irina Novotny", dreaming.get(28), dreaming.get(29)+globY);
  text("Ernesto Brito", dreaming.get(24), dreaming.get(25)+globY);
  text("Otto Cruz", dreaming.get(26), dreaming.get(27)+globY);
  text("Herminia\nDelgado", dreaming.get(22), dreaming.get(23)+globY-5);
  text("Santeria", dreaming.get(30), dreaming.get(31)+globY);
  text("El Lider", dreaming.get(32), dreaming.get(33)+globY-5);
}

public void badIndians()
{
  fill(255);
  indians.add(width*9/20); //0 Deborah Miranda
  indians.add(layer0);     //1
  indians.add(width*7/10); //2 Little Al (brother)
  indians.add(layer0);     //3
  indians.add(width/5);    //4 Louise (sister)
  indians.add(layer0);     //5
  indians.add(width*3/5);  //6 Madgel (mother)
  indians.add(layer1);     //7
  indians.add(width*3/10); //8 Alfred Edward (father)
  indians.add(layer1);     //9
  indians.add(width/15);   //10 Uncle Tommy and Bella
  indians.add(layer1);     //11
  indians.add(width*3/10); //12 Thomas Anthony Miranda (father's father)
  indians.add(layer2);     //13
  indians.add(width/2);    //14 Carmen Miranda
  indians.add(layer2);     //15
  indians.add(width/10);   //16 Marquesa
  indians.add(layer2);     //17
  indians.add(width/10);   //18 Dolores
  indians.add(layer3);     //19
  indians.add(width*3/10); //20 Maria Ines\nGarcia
  indians.add(layer3);     //21
  indians.add(width/2);    //22 Tomas Santos Miranda
  indians.add(layer3);     //23
  indians.add(width*3/5);  //24 Tranquilino Miranda
  indians.add(layer4);     //25
  indians.add(width*4/5);  //26 Severiana
  indians.add(layer4);     //27
  indians.add(width*4/5);  //28 Sacramento
  indians.add(layer5);     //29
  indians.add(width*3/5);  //30 Jacinto
  indians.add(layer5);     //31
  indians.add(width/5);    //32 Faustino Garcia (Maria Ines's parent)
  indians.add(layer4);     //33
  indians.add(10);         //34 Dr. Tarango
  indians.add(layer4);     //35
  indians.add(width*3/10); //36 Loreta Meadows
  indians.add(layer6);     //37
  indians.add(width/10);   //38 James Meadows
  indians.add(layer6);     //39
  indians.add(width/5);    //40 Isabel Meadows
  indians.add(layer5);     //41
  indians.add(width*2/5);  //42 Harrington
  indians.add(layer4);     //43
  indians.add(width*2/5);  //44 Cruz Miranda
  indians.add(layer7);     //45
  indians.add(width*3/5);  //46 Cristina Miranda
  indians.add(layer7);     //47
  textSize(30);
  fill(0);
  text("Bad Indians: A Tribal Memoir", 20, 675);
  strokeWeight(4);
  stroke(thingy.spriteR, thingy.spriteG, thingy.spriteB);
  line(indians.get(6), indians.get(7)+globY, indians.get(8), indians.get(9)+globY);//MadgelAlfred
  line(indians.get(26)+50, indians.get(27)+globY, indians.get(28)+50, indians.get(29)+globY);//SeverianaSacramento
  line(indians.get(28), indians.get(29)+globY, indians.get(30), indians.get(31)+globY);//SacramentoJacinto
  line(indians.get(36), indians.get(37)+globY, indians.get(38), indians.get(39)+globY);//Loreta/James
  line((indians.get(36)+indians.get(38))/2+80, indians.get(37)+globY, indians.get(40)+50, indians.get(41)+globY);//Isabel
  line(width/2+100, indians.get(47)+globY, indians.get(24)+50, indians.get(25)+globY);//Tranquilino
  line(indians.get(40)+50, indians.get(41)+globY, indians.get(42)+50, indians.get(43)+globY);//isabelHarrington
  line(indians.get(32), indians.get(33)+globY, indians.get(34), indians.get(35)+globY);//FaustinoTarango
  line(indians.get(20), indians.get(21)+globY, indians.get(22), indians.get(23)+globY);//MariaTomas
  line(indians.get(16)+50, indians.get(17)+globY, indians.get(18)+50, indians.get(19)+globY);//MarquesaDolores
  line(indians.get(32)+50, indians.get(33)+globY, indians.get(20)+50, indians.get(21)+globY);//FaustinoMaria
  line(indians.get(12), indians.get(13)+globY, indians.get(16), indians.get(17)+globY);//MarquesaThomas

  int a = 0;
  while (a<6)
  {
    line(width/2, layer1+globY, indians.get(a), indians.get(a+1)+globY);
    a+=2;
  }
  int c = 8;
  while (c<12)
  {
    line(indians.get(12)-30, indians.get(17)+globY, indians.get(c)+50, indians.get(c+1)+globY);
    c+=2;
  }
  int b = 12;
  while (b<16)
  {
    line(width/2, indians.get(21)+globY, indians.get(b)+50, indians.get(b+1)+globY);
    b+=2;
  }
  line(indians.get(44), layer7+globY, indians.get(46), layer7+globY);
  strokeWeight(1);
  int i = 0;
  while (i<48)
  {
    stroke(0, 255, 0);
    fill(0, 255, 0);
    rect(indians.get(i)-10, indians.get(i+1)-20+globY, 170, 50);
    i+=2;
  }
  textSize(17);
  fill(0);
  text("Deborah A.\nMiranda", indians.get(0), indians.get(1)+globY);
  text("Little Al\nMiranda", indians.get(2), indians.get(3)+globY);
  text("Louise\nMiranda", indians.get(4), indians.get(5)+globY);
  text("Magdel Eleanor\nYeoman", indians.get(6), indians.get(7)+globY);
  text("Alfred Edward\nMiranda", indians.get(8), indians.get(9)+globY);
  text("Uncle Tommy\nand Bella", indians.get(10), indians.get(11)+globY);
  text("Thomas Anthony\nMiranda", indians.get(12), indians.get(13)+globY);
  text("Carmen Miranda", indians.get(14), indians.get(15)+globY);
  text("Marquesa", indians.get(16), indians.get(17)+globY);
  text("Dolores", indians.get(18), indians.get(19)+globY);
  text("Maria Ines Garcia", indians.get(20), indians.get(21)+globY);
  text("Tomas Santos\nMiranda", indians.get(22), indians.get(23)+globY);
  text("Tranquilino\nMiranda", indians.get(24), indians.get(25)+globY);
  text("Severiana", indians.get(26), indians.get(27)+globY);
  text("Sacramento", indians.get(28), indians.get(29)+globY);
  text("Jacinto", indians.get(30), indians.get(31)+globY);
  text("Faustino Garcia", indians.get(32), indians.get(33)+globY);
  text("Dr. Tarango", indians.get(34), indians.get(35)+globY);
  text("Loreta Meadows", indians.get(36), indians.get(37)+globY);
  text("James Meadows", indians.get(38), indians.get(39)+globY);
  text("Isabel Meadows", indians.get(40), indians.get(41)+globY);
  text("Harrington", indians.get(42), indians.get(43)+globY);
  text("Cruz Miranda", indians.get(44), indians.get(45)+globY);
  text("Cristina Miranda", indians.get(46), indians.get(47)+globY);
}
void stage()
{
  image(sky, 0, 0, width, height);
  fill(0, 255, 0);
  noStroke();
  rect(0, height - 20+globY, width, 20);
  image(grass, 0, 0, width, height+globY);
}
void back_button()
{
  noStroke();
  fill(50, 150, 255);
  rect(1250*5/7, 625*5/7+100, 120, 50);
  triangle(1250*5/7, 600*5/7+100, 1250*5/7, 700*5/7+100, 1200*5/7, 650*5/7+100);
  textSize(15);
  fill(0);
  text("Back to\nmain menu", 1250*5/7, 640*5/7+110);
}
void setup()
{
  size(1000, 700);
  background(255);
  menu_map = loadImage("data/background.jpg");
  laos_flag = loadImage("data/la.png");
  cuba_flag = loadImage("data/caflagb.gif");
  calif_flag = loadImage("data/cuba-flag.gif");
  grass = loadImage("data/grass.gif");
  sky = loadImage("data/Sky Background 2.png");
}

void draw()
{
  background(255);
  if (laos||calif||cuba)
  {
    stage();
    textSize(50);
    fill(0);
    if (thingy.winstate==2)
    {
      thingy.spriteY=height/2+100;
      text("You win!!", width*2/5, height/2);
      System.out.println("\u0007");
    } else if (thingy.winstate==1)
    {
      text("You lose!!", width*2/5, height/2);
    }
    if (thingy.winstate==1&&thingy.spriteY>1500)
    {
      laos=false;
      calif=false;
      cuba=false;
    }
    if (laos)
    {  
      spiritCatches();
    }
    else if (calif) 
    {
      badIndians();
    } 
    else if (cuba)
    {    
      dreamingCuban();
    }
    if(!thingy.startGame||thingy.winstate==2   )
    {
    back_button();
    } 
    thingy.buildSprite();
  }
  else
    {
      thingy.reset();
      globY=0;
      background(0, 0, 0, 0);
      image(menu_map, 0, 100, 1000, 500);      //world map
      image(laos_flag, dimX2, dimY2, x2, y2);  //Laos
      image(cuba_flag, dimX3, dimY3, x3, y3);  //California
      image(calif_flag, dimX4, dimY4, x4, y4); //Cuba
    }
  if (thingy.startGame)
  {
    globY+=1;
  }
}

public class Sprite {
  private int spriteX;
  public int spriteY;
  private int sWidth;
  private int sHeight;
  private int spriteR;
  private int spriteG;
  private int spriteB;
  private int spriteSwitch;
  private boolean startGame;
  private boolean isJumping;
  private boolean faceRight;
  public int winstate = 0;

  Sprite() {
    spriteX = 500;
    spriteY = 630;
    sWidth = 30;
    sHeight = 60;
    spriteR = (int)random(250);
    spriteG = (int)random(250);
    spriteB = (int)random(250);
    spriteSwitch = 1;
    isJumping = true;
    startGame = false;
    faceRight = true;
  }


  public void buildSprite()
  {
    keyEvent();
    wrap();
    if (startGame)
    {
      jump();
      show();
    }
    show();
  }

  public void reset()
  {
    spriteX = 500;
    spriteY = 620;
    sWidth = 5;
    sHeight = 60;
    spriteR = (int)random(250);
    spriteG = (int)random(250);
    spriteB = (int)random(250);
    isJumping = true;
    startGame = false;
    winstate = 0;
  }

  public void keyEvent()
  {
    if (keyPressed && keyCode == RIGHT)
    {
      spriteX+=5;
      faceRight = true;
    }
    if (keyPressed && keyCode == LEFT)
    {
      spriteX-=5;
      faceRight = false;
    }
    if (key == ' ')
    {
      startGame = true;
    }
    if (keyPressed && key == 'p')
    {
      startGame=false;
    }
  }

  private void show() {
    fill(spriteR, spriteG, spriteB);
    if (startGame && spriteY<900 && globY > 750)
    {
      winstate = 2;
    } else if (startGame && spriteY>900 && globY<500)
    {
      winstate = 1;
    } else
    {
      winstate = 0;
    }
    if (startGame && isJumping) {
      if (faceRight == true) {
        walkRight();
      } else {
        walkLeft();
      }
    } else if (keyPressed /*&& spriteX%14 == 0 || spriteX%14 == 1 || spriteX%14 == 2 || spriteX%14 == 3*/)
    {
      if (faceRight == true) {
        walkRight();
      } else {
        walkLeft();
      }
    } else if ((startGame && !isJumping) || !keyPressed) {
      stand();
    }
  }

  private void stand() {
    rect(spriteX, spriteY, sWidth, sHeight);
    ellipse(spriteX +2, spriteY - 15, 30, 30);
  }

  private void walkRight() {
    rect(spriteX, spriteY, sWidth, sHeight-20);
    rect(spriteX+2, spriteY+35, 25, 5);//front leg
    rect(spriteX+25, spriteY+35, 10, 25);
    rect(spriteX+4, spriteY+40, -25, 5);//back leg
    rect(spriteX-21, spriteY+15, 10, 25);
    ellipse(spriteX +2, spriteY - 15, 30, 30);
  }

  private void walkLeft() {
    rect(spriteX, spriteY, sWidth, sHeight-20);
    rect(spriteX-2, spriteY+40, 25, 5); //front leg
    rect(spriteX-25, spriteY+35, 10, 25);
    rect(spriteX+2, spriteY+35, -25, 5); //back leg
    rect(spriteX+17, spriteY+20, 10, 25);
    ellipse(spriteX +2, spriteY - 15, 30, 30);
  }

  private void wrap() {
    if (spriteX < -10) {
      spriteX = 990;
    }
    if (spriteX > 995) {
      spriteX = -9;
    }
  }

  private void jump() {
    if (!isJumping) {
      spriteY+=5;
      if (get(spriteX/2, spriteY+sHeight) == color(0, 255, 0) 
        || get(spriteX, spriteY+sHeight) == color(0, 255, 0) 
        || get(spriteX+sWidth, spriteY+sHeight) == color(0, 255, 0)) {
        isJumping = true;

        spriteR = (int)random(255);
        spriteG = (int)random(255);
        spriteB = (int)random(255);
      }
    } else {
      spriteY-=5;
      if (spriteY < 500) {
        isJumping = false;
      }
    }
  }
}

public void mousePressed()
{
  if (!cuba&&!laos&&!calif)
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
  } else
  {
    if (mouseX > 1250*5/7 && mouseX < (1250+120)*5/7 && mouseY > 625*5/7+100&&mouseY < 675*5/7+100 )
    {
      laos = false;
      calif = false;
      cuba = false;
      thingy.reset();
    }
  }
}

