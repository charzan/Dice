int dieWidth = 50;
int sum;


Die a;
void setup()
{
	noLoop();
	size(1000, 900);
}
void draw()
{
	background(0, 0, 0);
	
	//Die a = new Die(50, 50);
	//Die b = new Die(150, 50);
	for(int row = 25; row <+ 700; row += dieWidth*2){
		for(int column = 25; column <= 1000; column += dieWidth* 2){
			a = new Die(column, row); 
			a.show();

		}
	}
	textSize(25);
	text("You rolled: " + sum, (width/2 - 80), height - 100);


	
	//a.show();
	//b.show();

}
void mousePressed()
{
	redraw();
	sum = 0;
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
	int roll()
	{
		//your code here
		int ranNum = (int)(Math.random()*6 + 1);
		return ranNum;
	}
	void show()
	{
		//your code here
		int ranNum = roll();
		stroke(0, 255, 0);
		fill(0, 0, 0);
		rect(myX, myY, dieWidth, dieWidth);
		fill(0, 255, 0);

		if(ranNum == 1)
		{
			//one dot
			ellipse(myX + 25, myY + 25, 10, 10);
			sum += 1;

		}
		if(ranNum == 2)
		{
			//2 dot
			ellipse(myX + dieWidth/3, myY + dieWidth/3, 10, 10);
			ellipse(myX + (dieWidth*2)/3, myY + (dieWidth*2)/3, 10, 10);
			sum += 2;

		}
		if(ranNum == 3)
		{
			//3 dot
			ellipse(myX + (dieWidth)/5, myY + (dieWidth)/5, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + (dieWidth*4)/5, myY + (dieWidth*4)/5, 10, 10);
			sum += 3;

		}
		if(ranNum == 4)
		{
			//4 dot
			ellipse(myX + dieWidth/4, myY + dieWidth/4, 10, 10);
			ellipse(myX + (dieWidth*3)/4, myY + dieWidth/4, 10, 10);
			ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*3)/4, 10, 10);
			ellipse(myX + dieWidth/4, myY + (dieWidth*3)/4, 10, 10);
			sum += 4;
		}
		if(ranNum == 5)
		{
			//5 dot
			ellipse(myX + dieWidth/4, myY + dieWidth/4, 10, 10);
			ellipse(myX + (dieWidth*3)/4, myY + dieWidth/4, 10, 10);
			ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*3)/4, 10, 10);
			ellipse(myX + dieWidth/4, myY + (dieWidth*3)/4, 10, 10);
			//center dot
			ellipse(myX + 25, myY + 25, 10, 10);
			sum += 5;


		}
		if(ranNum == 6)
		{
			//6 dot
			//left 3
			ellipse(myX +   dieWidth/4, myY + dieWidth/6, 10, 10);
			ellipse(myX + (dieWidth)/4, myY + (dieWidth*3)/6, 10, 10);
			ellipse(myX + (dieWidth)/4, myY + (dieWidth*5)/6, 10, 10);
				//right 3
			ellipse(myX + (dieWidth*3)/4, myY + dieWidth/6, 10, 10);
			ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*3)/6, 10, 10);
			ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*5)/6, 10, 10);

			sum += 6;

		}
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
			//ellipse(myX +   dieWidth/4, myY + dieWidth/6, 10, 10);
			//ellipse(myX + (dieWidth)/4, myY + (dieWidth*3)/6, 10, 10);
			//ellipse(myX + (dieWidth)/4, myY + (dieWidth*5)/6, 10, 10);
				//right 3
			//ellipse(myX + (dieWidth*3)/4, myY + dieWidth/6, 10, 10);
			//ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*3)/6, 10, 10);
			//ellipse(myX + (dieWidth*3)/4, myY + (dieWidth*5)/6, 10, 10);





	}
}
