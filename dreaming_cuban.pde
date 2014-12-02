void dreamingCuban()
{
  dreaming.add(width/2-150); // 0  Celia
  dreaming.add(layer1);      // 1
  dreaming.add(width/2+50);  // 2  Jorge
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
    text("Irinita Del Pino", dreaming.get(14),dreaming.get(15));
    text("Luz and Milagro\nVillaverde", dreaming.get(16), dreaming.get(17));
    
    //text("Rufino Puente", dreaming.get(6), dreaming.get(7));
    
    //text("Hugo Villaverde", hugoX, hugoY);
    
    
    //text("Irina Novotny", irinaX,irinaY);
    
    //text("Ernesto Brito", ernestoX, ernestoY);
    //text("Otto Cruz", ottoX, ottoY);
    //text("Herminia Delgado", herminiaX, herminiaY);
 
}








//void characters()
//{
//if(cuba)
//{
//int celiaX = 100;
//int celiaY = 100;
//
//fill(255);
//stroke(0);
//rect(celiaX,celiaY,50,20);
//text("Celia Del Pino",celiaX,celiaY);
//}
//else if(calif)
//{
//}
//else if(laos)
//{
//}
//}

