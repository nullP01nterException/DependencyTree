import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class DependencyTree extends PApplet {


public void setup(){
size(1000,700);
}
public void draw(){
	background(0);
  fill(255,0,0);
  ellipse(width/2,height/2,50,50);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "DependencyTree" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
