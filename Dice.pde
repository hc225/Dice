void setup()
{
	noLoop();
	size(600,600);
}
void draw()
{
	clear();

	Die die1 = new Die(50,50);
	die1.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int diceNum, myX, myY;
	
	Die(int x, int y) //constructor
	{
		roll();
		myX = x;
		myY = y;
	}
	void roll()
	{
		diceNum = (int)(Math.random()*6)+1;
	}
	void show()
	{
		rect(myX,myY,30,30);
		if
	}
}
