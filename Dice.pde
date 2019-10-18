int x = 50;
int y = 50;
int nice = 1;
int sum = 0;

void setup()
{	
	size(500,600);
	frameRate(200);
	background(200);
}
void draw()
{	

	Die ok = new Die(x,y);
	ok.show();
	if(ok.diceDots == nice)
	{

		if(x >= 500){
			x = 0;
			y+= 50;
		}
		x += 50;
	}
	if(y > 500)
		{
			noLoop();
		}
	sum += ok.diceDots;
	textSize(24);
	fill(200);
	noStroke();
	rect(200,500,500,100);
	fill(255);
	text("Dots of all rolls: " + sum,100,550);
}
void mousePressed()
{
	loop();
	redraw();
	background(200);
	x = 50;
	y = 50;
	nice += 1;
	if(nice > 6)
		nice = 1;
	sum = 0;
}
class Die //models one single dice cube
{
	int myX,myY,diceDots;
	
	Die(int x, int y) //constructor
	{
		myX = x - 50;
		myY = y - 50;
		diceDots =  (int)(Math.random() * 7 + 1);
	}
	void roll()
	{
		
	}
	void show()
	{	
		int[] col = {(int)(Math.random()*255+ 100),(int)(Math.random()*255 + 200),(int)(Math.random()*255 + 100)};
		int[] col2 = {(int)(Math.random()*255-100),(int)(Math.random()*255-100),(int)(Math.random()*255-100)};

		fill(col[0],col[1],col[2]);
		rect(myX,myY, 50,50,10);
		noFill();
		if(diceDots == 1)
		{
			fill(col2[0],col2[1],col2[2]);
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else if(diceDots == 2)
		{
			fill(col2[0],col2[1],col2[2]);
			ellipse(myX+10, myY+25, 10, 10);
			ellipse(myX+40, myY+25, 10, 10);
		}
		else if(diceDots == 3)
		{
			fill(col2[0],col2[1],col2[2]);
			int x = 10;
			for(int y = 10; y <= 40; y+=13)
			{
				ellipse(myX+x, myY+y,10,10);
				x += 15;
			}
		}
		else if(diceDots == 4)
		{	
			fill(col2[0],col2[1],col2[2]);

			for(int y = 12; y < 50; y+=25)
			{	
				for(int x = 12; x < 50; x += 25)
					ellipse(myX+x, myY+y, 10, 10);
			}
		}
		else if(diceDots == 5)
		{
			fill(col2[0],col2[1],col2[2]);
			for(int y = 12; y < 50; y+=25)
			{	
				for(int x = 12; x < 50; x += 25)
					ellipse(myX+x, myY+y, 10, 10);
			}
			ellipse(myX + 25, myY + 25, 10,10);
		}
		else
		{
			fill(col2[0],col2[1],col2[2]);
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
