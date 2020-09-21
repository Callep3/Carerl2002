//Key pressed, set our variables to true
void keyPressed()
{
	//for movement inputs
	if (keyCode == LEFT || key == 'a' || key == 'A')
	{
		moveLeft = true;
	}
	if (keyCode == RIGHT || key == 'd' || key == 'D')
	{
		moveRight = true;
	}
	if (keyCode == UP || key == 'w' || key == 'W')
	{
		moveUp = true;
	}
	if (keyCode == DOWN || key == 's' || key == 'S')
	{
		moveDown = true;
	}
	//To toggle gravity
	if (key == 'g' || key == 'G')
	{
		if (gravityIsOn)
		{
			gravityIsOn = false;
			println("gravityIsOn: " + gravityIsOn);
		}
		else if (gravityIsOn == false)
		{
			gravityIsOn = true;
			println("gravityIsOn: " + gravityIsOn);
		}
	}
	//To toggle deacceleration
	if (key == 'v' || key == 'V')
	{
		if (deaccelerationIsOn)
		{
			deaccelerationIsOn = false;
			deacceleration = 0;
			println("deaccelerationIsOn: " + deaccelerationIsOn);
		} 
		else if (deaccelerationIsOn == false)
		{
			deaccelerationIsOn = true;
			deacceleration = 2;
			println("deaccelerationIsOn: " + deaccelerationIsOn);
		}
	}
	//To toggle bounce
	if (key == 'b' || key == 'b') 
	{
		if (bounceIsOn) 
		{
			bounceIsOn = false;
			println("bounceIsOn: " + bounceIsOn);
		}
		else if (bounceIsOn == false) 
		{
			bounceIsOn = true;
			println("bounceIsOn: " + bounceIsOn);
		}
	}
}

//When a key is released, we will set our variable to false
void keyReleased()
{
	if (keyCode == LEFT || key == 'a' || key == 'A')
	{
		moveLeft = false;
	}
	if (keyCode == RIGHT || key == 'd' || key == 'D')
	{
		moveRight = false;
	}
	if (keyCode == UP || key == 'w' || key == 'W')
	{
		moveUp = false;
	}
	if (keyCode == DOWN || key == 's' || key == 'S')
	{
		moveDown = false;
	}
}