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

Sprite thingy = new Sprite();

public void setup(){
size(1000,700);
background(255);
}
public void draw(){
	fill(0,255,0);
	noStroke();
	rect(0,height - 20,width,20);

	thingy.buildSprite();
	fill(255,255,225,10);
	rect(0,0,width,height);

}

public class Sprite{
	private int spriteX;
	private int spriteY;
	private int sWidth;
	private int sHeight;
	private int spriteR;
	private int spriteG;
	private int spriteB;
	private boolean startGame;
	private boolean isJumping;
	
	Sprite(){
	 spriteX = 500;
	 spriteY = 630;
	 sWidth = 50;
	 sHeight = 50;
	 spriteR = (int)random(250);
	 spriteG = (int)random(250);
	 spriteB = (int)random(250);
	 isJumping = true;
	 startGame = false;
	}

	public void buildSprite(){
		keyPressed();
		wrap();
		if(startGame){
			jump();
		}
		show();
	}

	private void keyPressed(){
		if(keyPressed && keyCode == RIGHT){
			spriteX+=5;
		}
		if(keyPressed && keyCode == LEFT){
			spriteX-=5;
		}
		if(key == ' '){
			startGame = true;
		}
	}

	private void show(){
		fill(spriteR, spriteG, spriteB);
		rect(spriteX,spriteY,sWidth,sHeight);
	}

	private void wrap(){
		if(spriteX < -10){
			spriteX = 990;
		}
		if(spriteX > 995){
			spriteX = -9;
		}
	}

	private void jump(){
		if(!isJumping){
			spriteY+=5;
			if(get(spriteX/2,spriteY+sHeight) == color(0,255,0) 
				|| get(spriteX,spriteY+sHeight) == color(0,255,0) 
				|| get(spriteX+sWidth,spriteY+sHeight) == color(0,255,0)){
					isJumping = true;

					spriteR = (int)random(255);
	 				spriteG = (int)random(255);
	 				spriteB = (int)random(255);
			}
		}else{
			spriteY-=5;
			if(spriteY < 500){
				isJumping = false;
			}
		}
	}
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
