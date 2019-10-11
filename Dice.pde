void setup()
{	
	size(500,500);
	frameRate(30);
}
void draw()
{	
	//background(0);
	for(int y = 0; y <= 500; y+=50)
	{
		for(int x = 0; x <= 500; x += 50)
		{
			Die ok = new Die(x,y);
			while((ok.diceDots == 1))
			{
				ok.show();
			}
		}
	}
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,diceDots;
	
	Die(int x, int y) //constructor
	{
		myX = x - 50;
		myY = y - 50;
		diceDots = (int)(Math.random() * 7 + 1);
	}
	void roll()
	{
		
	}
	void show()
	{	
		int[] col = {(int)(Math.random()*255+ 80),(int)(Math.random()*255 + 80),(int)(Math.random()*255 + 80)};

		fill(col[0],col[1],col[2]);
		rect(myX,myY, 50,50,10);
		noFill();
		if(diceDots == 1)
		{
			fill(0);
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else if(diceDots == 2)
		{
			fill(0);
			ellipse(myX+10, myY+25, 10, 10);
			ellipse(myX+40, myY+25, 10, 10);
		}
		else if(diceDots == 3)
		{
			fill(0);
			int x = 10;
			for(int y = 10; y <= 40; y+=13)
			{
				ellipse(myX+x, myY+y,10,10);
				x += 15;
			}
		}
		else if(diceDots == 4)
		{	
			fill(0);

			for(int y = 12; y < 50; y+=25)
			{	
				for(int x = 12; x < 50; x += 25)
					ellipse(myX+x, myY+y, 10, 10);
			}
		}
		else if(diceDots == 5)
		{
			fill(0);
			for(int y = 12; y < 50; y+=25)
			{	
				for(int x = 12; x < 50; x += 25)
					ellipse(myX+x, myY+y, 10, 10);
			}
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else
		{
			fill(0);
			for(int y = 10; y < 50; y+=15)
			{	
				for(int x = 12; x < 50; x += 25)
				{
					ellipse(myX+x, myY+y, 10, 10);
				}
			}
		}
	}
}
