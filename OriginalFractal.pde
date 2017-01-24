//TODO - not working... menger sponge :)

public int iteration = 0;

public void setup()
{
	size(1000,1000);
	noLoop();
}

public void draw()
{
	background(128);
	//fill(0,128,128);
	squareTime(500,500,iteration);
}

public void mousePressed()
{
	iteration++;
	redraw();
}

public void squareTime (int x, int y, int layers)
{
	if (layers == 0)
		return;
	rect((int)(x-Math.pow(2,layers-1)),(int)(y-Math.pow(2,layers-1)),(int)(Math.pow(2,layers)),(int)(Math.pow(2,layers)));
	squareTime((int)(x-Math.pow(2,layers-1)),(int)(y-Math.pow(2,layers-1)), layers-1);
	squareTime((int)(x-Math.pow(2,layers-1))+(int)(Math.pow(2,layers)),(int)(y-Math.pow(2,layers-1)), layers-1);
	squareTime((int)(x-Math.pow(2,layers-1)),(int)(y-Math.pow(2,layers-1))+(int)(Math.pow(2,layers)), layers-1);
	squareTime((int)(x-Math.pow(2,layers-1))+(int)(Math.pow(2,layers)),(int)(y-Math.pow(2,layers-1))+(int)(Math.pow(2,layers)), layers-1);
}