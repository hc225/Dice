int totalRoll = 0;
void setup()
{
	noLoop();
	size(800,600);
	background(#008000);
}
void draw()
{
	for(int y = 20; y < 520; y += 40)
	{
		for(int x = 20; x < 760; x += 40)
		{
			Die die1 = new Die(x,y);
			die1.show();
		}
	}
	fill(#008000);
	noStroke();
	rect(0, 540, 800, 50);
	fill(0);
	textSize(50);
	textAlign(CENTER);
	text("Total Roll: " + totalRoll, 400, 580);
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
		totalRoll += diceNum;
	}
	void show()
	{
		fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		rect(myX,myY,30,30,9);
		fill(0);
		if(diceNum == 1 || diceNum == 3 || diceNum == 5)
			ellipse(myX+15,myY+15,3,3);
		if(diceNum == 2 || diceNum == 3 || diceNum == 4 || diceNum == 5 || diceNum ==6)
		{
			ellipse(myX+23,myY+7,3,3);
			ellipse(myX+7,myY+23,3,3);
		}
		if(diceNum == 4 || diceNum == 5 || diceNum == 6)
		{
			ellipse(myX+23,myY+23,3,3);
			ellipse(myX+7,myY+7,3,3);			
		}
		if(diceNum == 6)
		{
			ellipse(myX+23,myY+15,3,3);
			ellipse(myX+7,myY+15,3,3);	
		}			
	}
}
