Sprite thingy = new Sprite();

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
int layer0 = 20;
int layer1 = 120;
int layer2 = 245;
int layer3 = 360;
int layer4 = 470;
int layer5 = 540;
PImage menu_map;
PImage laos_flag;
PImage cuba_flag;
PImage calif_flag;
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
  spirit.add(layer3);     //1
  spirit.add(width/5);    //2  Foua
  spirit.add(layer2);     //3
  spirit.add(width*3/5);  //4  Nao Kao
  spirit.add(layer2);     //5
  spirit.add(width*2/5);  //6  Fadiman
  spirit.add(layer5);     //7 
  spirit.add(width*3/5);  //8  Cultural Brokers
  spirit.add(layer4);     //9
  spirit.add(width/5);    //10  MCMC
  spirit.add(layer4);     //11
  spirit.add(width/5);    //12  Mai
  spirit.add(layer0);     //13
  spirit.add(width*2/5);  //14  May
  spirit.add(layer0);     //15
  spirit.add(width*3/5);  //16  Yer
  spirit.add(layer0);     //17
  spirit.add(width*4/5);  //18  True
  spirit.add(layer0);     //19
  spirit.add(width/10);   //20  Zoua
  spirit.add(layer1);     //21
  spirit.add(width*3/10); //22  Chong
  spirit.add(layer1);     //23
  spirit.add(width/2);    //24  Pang
  spirit.add(layer1);     //25
  spirit.add(width*7/10); //26  Cheng
  spirit.add(layer1);     //27
  spirit.add(width/10);   //28  Neil & Peggy
  spirit.add(layer5);     //29
  spirit.add(width/10);   //30  Dan Murphy
  spirit.add(layer3);     //31
  strokeWeight(4);
  line(width/5, layer2, width*3/5, layer2);
  line(width/2, layer2, width/2, layer3);
  int n = 12;
  while (n<28)
  {
    line(width/2, layer2, spirit.get(n), spirit.get(n+1));
    n+=2;
  }
  int a = 6;
  while (a<12)
  {
    line(width/2, layer3, spirit.get(a)+100, spirit.get(a+1));
    a+=2;
  }
  strokeWeight(1);
  int i = 0;
  while (i<32)
  {
    rect(spirit.get(i)-10, spirit.get(i+1)-20, 170, 50);
    i+=2;
  }    
  fill(0);
  text("Lia Lee", spirit.get(0), spirit.get(1));
  text("Foua Yang", spirit.get(2), spirit.get(3));
  text("Nao Kao Lee", spirit.get(4), spirit.get(5));
  text("Anne Fadiman", spirit.get(6), spirit.get(7));
  text("Cultural Brokers", spirit.get(8), spirit.get(9));
  text("MCMC", spirit.get(10), spirit.get(11));
  text("Mai Lee", spirit.get(12), spirit.get(13));
  text("May Lee", spirit.get(14), spirit.get(15));
  text("Yer Lee", spirit.get(16), spirit.get(17));
  text("True Lee", spirit.get(18), spirit.get(19));
  text("Zoua Lee", spirit.get(20), spirit.get(21));
  text("Chong Lee", spirit.get(22), spirit.get(23));
  text("Pang Lee", spirit.get(24), spirit.get(25));
  text("Cheng Lee", spirit.get(26), spirit.get(27));
  text("Neil and Peggy\nLASTNAME", spirit.get(28), spirit.get(29));
  text("Dan Murphy", spirit.get(30), spirit.get(31));
}

public void dreamingCuban()
{
  dreaming.add(width/5); // 0  Celia
  dreaming.add(layer1);      // 1
  dreaming.add(width*3/5);  // 2  Jorge
  dreaming.add(layer1);      // 3
  dreaming.add(width/12);    // 4  Lourdes
  dreaming.add(layer2);      // 5
  dreaming.add(width/2);     // 6  Felicia
  dreaming.add(layer2);      // 7
  dreaming.add(width*5/6);   // 8  Javier
  dreaming.add(layer2);      // 9  
  dreaming.add(width/10);     // 10  Pilar
  dreaming.add(layer3);      // 11
  dreaming.add(width*3/10);   // 12  Ivanito
  dreaming.add(layer3);      // 13
  dreaming.add(width*7/10);  // 14  Irinita
  dreaming.add(layer3);      // 15
  dreaming.add(width/2);     // 16  Luz and Milagro
  dreaming.add(layer3);      // 17  
  //dreaming.add(layer4);      // 18
  //dreaming.add(layer4);      // 19
  //dreaming.add(layer4);      // 20
  fill(255);
  textSize(20);
  stroke(0);
  strokeWeight(3);
  line(dreaming.get(0),layer1,dreaming.get(2),layer1);
  int n=4;
  while (n<10)
  {
    line(width/2, layer1, dreaming.get(n)+100, dreaming.get(n+1));
    n+=2;
  }
  strokeWeight(1);
  int i = 0;
  while (i<18)
  {
    rect(dreaming.get(i)-10, dreaming.get(i+1)-20, 170, 50);
    i+=2;
  }

  fill(0);
  text("Celia Del Pino", dreaming.get(0), dreaming.get(1));
  text("Jorge Del Pino", dreaming.get(2), dreaming.get(3));

  text("Lourdes Puente", dreaming.get(4), dreaming.get(5));
  text("Felicia Villaverde", dreaming.get(6), dreaming.get(7));
  text("Javier Del Pino", dreaming.get(8), dreaming.get(9));

  text("Pilar Puente", dreaming.get(10), dreaming.get(11));
  text("Ivanito Villaverde", dreaming.get(12), dreaming.get(13));
  text("Irinita Del Pino", dreaming.get(14), dreaming.get(15));
  text("Luz and Milagro\nVillaverde", dreaming.get(16), dreaming.get(17));

  //text("Rufino Puente", dreaming.get(6), dreaming.get(7));

  //text("Hugo Villaverde", hugoX, hugoY);

  //text("Irina Novotny", irinaX,irinaY);

  //text("Ernesto Brito", ernestoX, ernestoY);
  //text("Otto Cruz", ottoX, ottoY);
  //text("Herminia Delgado", herminiaX, herminiaY);
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
  indians.add(width*2/5); //24 Tranquilino Miranda
  indians.add(layer4);     //25
  indians.add(width*3/5); //26 Severiana
  indians.add(layer4);     //27
  indians.add(width*9/10); //28 Sacramento
  indians.add(layer5);     //29
  indians.add(width*9/10); //30 Jacinto
  indians.add(layer4);     //31
  indians.add(width*9/10); //32 Faustino Garcia (Maria Ines's parent)
  indians.add(layer4);     //33
  indians.add(width*9/10); //34 Dr. Tarango
  indians.add(layer4);     //35
  fill(255);
  strokeWeight(3);
  line(0,0,1000,700);
  line(indians.get(6),layer1,indians.get(8),layer1);
  strokeWeight(1);
  int i = 0;
  while (i<36)
  {
    rect(indians.get(i)-10, indians.get(i+1)-20, 170, 50);
    i+=2;
  }
  textSize(17);
  fill(0);
  text("Deborah A.\nMiranda",indians.get(0),indians.get(1));
  text("Little Al\nMiranda",indians.get(2),indians.get(3));
  text("Louise\nMiranda",indians.get(4),indians.get(5));
  text("Magdel Eleanor\nYeoman",indians.get(6),indians.get(7));
  text("Alfred Edward\nMiranda",indians.get(8),indians.get(9));
  text("Uncle Tommy\nand Bella",indians.get(10),indians.get(11));
  text("Thomas Anthony\nMiranda",indians.get(12),indians.get(13));
  text("Carmen Miranda",indians.get(14),indians.get(15));
  text("Marquesa",indians.get(16),indians.get(17));
  text("Dolores",indians.get(18),indians.get(19));
  text("Maria Ines Garcia",indians.get(20),indians.get(21));
  text("Tomas Santos\nMiranda",indians.get(22),indians.get(23));
  text("Tranquilino\nMiranda",indians.get(24),indians.get(25));
  text("Severiana",indians.get(26),indians.get(27));
}

void setup(){
size(1000,700);
background(255);
menu_map = loadImage("data/background.jpg");
laos_flag = loadImage("data/la.png");
cuba_flag = loadImage("data/caflagb.gif");
calif_flag = loadImage("data/cuba-flag.gif");

}

void draw(){
	 if (laos)
  {
    textSize(30);
    fill(255);
    text("The Spirit Catches You and You Fall Down: A Hmong Child, Her\nAmerican Doctors, and the Collision of Two Cultures", 20, 650);
    spiritCatches();
    fill(0,255,0);
	noStroke();
	rect(0,height - 20,width,20);
    thingy.buildSprite();
	fill(255,255,225,10);
	rect(0,0,width,height);
  } 
  	else if (calif) 
  {
    textSize(30);
    fill(255);
    text("Bad Indians: A Tribal Memoir", 20, 675);
    badIndians();
    fill(0,255,0);
	noStroke();
	rect(0,height - 20,width,20);
    thingy.buildSprite();
	fill(255,255,225,10);
	rect(0,0,width,height);
  } 
  	else if (cuba)
  {
    textSize(30);
    fill(255);
    text("Dreaming in Cuban: A Novel", 20, 675);   
    dreamingCuban();
    fill(0,255,0);
	noStroke();
	rect(0,height - 20,width,20);
    thingy.buildSprite();
	fill(255,255,255,10);
	rect(0,0,width,height);
  } 
  	else
  {
    background(0, 0, 0, 0);
    image(menu_map, 0, 100, 1000, 500);
    image(laos_flag, dimX2, dimY2, x2, y2); //laos_flag
    image(cuba_flag, dimX3, dimY3, x3, y3); //California
    image(calif_flag, dimX4, dimY4, x4, y4); //Cuba
  }
  	if (laos||calif||cuba)
  {
    noStroke();
    fill(255);
    rect(1250*5/7, 625*5/7+100, 120, 50);
    triangle(1250*5/7, 600*5/7+100, 1250*5/7, 700*5/7+100, 1200*5/7, 650*5/7+100);
    textSize(15);
    fill(0);
    text("Back to\nmain menu", 1250*5/7, 640*5/7+110);
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
    }
  }
}
