void setup()
{
	noLoop();
	size(800,600);
}
void draw()
{
	for(int y = 20; y < 600; y += 50)
	{
		for(int x = 20; x < 800; x += 50)
		{
			Die die1 = new Die(x,y);
			die1.show();
		}
	}

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
		if(diceNum == 1)
			ellipse(myX-30,myY-30,5,5);
	}
}
