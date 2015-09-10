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

public class Dice extends PApplet {

int dieWidth = 50;


public void setup()
{
	noLoop();
	size(300, 300);
}
public void draw()
{
	background(0, 0, 255);
	Die a = new Die(50, 50);
	Die b = new Die(150, 50);
	
	a.show();
	b.show();

}
public void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;
	Die(int x, int y) //constructor
	{
		
		myX = x;
		myY = y;

		//variable initializations here
	}
	public void roll()
	{
		//your code here
	}
	public void show()
	{
		//your code here
		stroke(0, 255, 0);
		fill(0, 0, 0);
		rect(myX, myY, dieWidth, dieWidth);
		fill(0, 255, 0);
		//one dot
			//ellipse(myX + 25, myY + 25, 10, 10);

		//2 dots
			//ellipse(myX + dieWidth/3, myY + dieWidth/3, 10, 10);
			//ellipse(myX + (dieWidth*2)/3, myY + (dieWidth*2)/3, 10, 10);

		//3 dots
			//ellipse(myX + (dieWidth)/5, myY + (dieWidth)/5, 10, 10);
			//ellipse(myX + 25, myY + 25, 10, 10);
			//ellipse(myX + (dieWidth*4)/5, myY + (dieWidth*4)/5, 10, 10);

		//4 dots
			//ellipse(myX + dieWidth/4, myY + dieWidth/4, 10, 10);
			//ellipse(myX + (dieWidth*3)/4, myY + dieWidth/4, 10, 10);
			//ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*3)/4, 10, 10);
			//ellipse(myX + dieWidth/4, myY + (dieWidth*3)/4, 10, 10);

		//5 dots
				//like #4 dots
			//ellipse(myX + dieWidth/4, myY + dieWidth/4, 10, 10);
			//ellipse(myX + (dieWidth*3)/4, myY + dieWidth/4, 10, 10);
			//ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*3)/4, 10, 10);
			//ellipse(myX + dieWidth/4, myY + (dieWidth*3)/4, 10, 10);
				//5th dot like #1 dot
			//ellipse(myX + 25, myY + 25, 10, 10);

		//6 dots 
				//similar to 4 dots
				//left 3
			ellipse(myX +   dieWidth/4, myY + dieWidth/6, 10, 10);
			ellipse(myX + (dieWidth)/4, myY + (dieWidth*3)/6, 10, 10);
			ellipse(myX + (dieWidth)/4, myY + (dieWidth*5)/6, 10, 10);
			//ellipse(myX + dieWidth/4, myY + (dieWidth*3)/4, 10, 10);





	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Dice" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
