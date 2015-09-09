int dieWidth = 50;


void setup()
{
	noLoop();
	size(300, 300);
}
void draw()
{
	background(0, 0, 255);
	Die a = new Die(50, 50);
	Die b = new Die(150, 50);
	
	a.show();
	b.show();

}
void mousePressed()
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
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
		stroke(0, 255, 0);
		fill(0, 0, 0);
		rect(myX, myY, dieWidth, dieWidth);
		fill(0, 255, 0);
		//one dot
		//ellipse(myX + 25, myY + 25, 10, 10);

		//2 dots
		ellipse(myX + 16.6, myY + 16.6, 10, 10);
		ellipse(myX + 33.4, myY + 33.4, 10, 10);

	}
}
