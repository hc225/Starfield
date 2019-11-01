Particle[] parts = new Particle[1000];
void setup()
{
	size(800,600);
	noStroke();
	frameRate(60);
	for(int i = 0; i < parts.length; i++)
	{
		parts[i] = new Particle();
		parts[0] == new OddballParticle();

	}
}
void draw()
{
	background(0);
	for(int i = 0; i < parts.length; i++)
	{
		parts[i].move();
		parts[i].show();
		
	}

}
class Particle
{
	double myX,myY,myAngle,mySpeed;
	int myColor;
	Particle()
	{
		myX = 400;
		myY = 300;
		mySpeed = Math.random()*10;
		myAngle = Math.random()*2*Math.PI;
		myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));

	}
	void move()
	{
		myX += Math.cos(myAngle)*mySpeed;
		myY += Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,4,3);
	}
}
class OddballParticle extends Particle
{
	OddballParticle()
	{
		myX = 400;
		myY = 300;
		mySpeed = Math.random()*2;
		myColor = color(255,0,0);
	}
	void move()
	{
		myX += Math.cos(myAngle)*mySpeed;
		myY += Math.sin(myAngle)*mySpeed;
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,10,10);
	}

}


