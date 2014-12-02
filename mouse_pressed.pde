void mousePressed()
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

