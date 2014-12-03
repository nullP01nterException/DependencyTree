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