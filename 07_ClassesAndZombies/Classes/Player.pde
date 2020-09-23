//Global Booleans so that you can easily switch them with key presses
boolean moveLeft, moveRight, moveUp, moveDown, gravityIsOn, deaccelerationIsOn, bounceIsOn = true;
//This needs to be global because i change the value in Input.pde instead of in the player code (easily fixed but not worth doing for this)
float deacceleration = 2;

public class Player 
{
	//Variables
	float speed = 50;
	float acceleration = 2;
	int size = 20;
	int halfSize = size / 2;
	PVector ballPosition, ballDirection, ballVelocity, gravity;

	//Init of all the vectors needed, also takes in the X and Y of the ball when it is called in the setup function of the main file
	public Player (float x, float y) 
	{
		ballPosition = new PVector(x, y);
		ballVelocity = new PVector(0, 0);
		ballDirection = new PVector(0, 0);
		gravity = new PVector(0, 0);
	}

	//Everything that needs to happen
	void update()
	{
		Direction();

  		Acceleration();

		Gravity();

		Move();

		Constraints();
	}

	//Makes sure the ball is drawn (visible) and updates its position
	void draw()
	{
		fill(128, 0, 128);
		ellipse(ballPosition.x, ballPosition.y, size, size);
	}

	//Check direction of the ball dependant on player input
	void Direction()
	{
		if (moveLeft)
		{
			ballDirection.x -= 1;
		}
		if (moveRight)
		{
			ballDirection.x += 1;
		}
		if (moveUp)
		{
			ballDirection.y -= 1;
		}
		if (moveDown)
		{
			ballDirection.y += 1;
		}
	}

	//Handles acceleration and deacceleration dependant on player input
	void Acceleration()
	{
		//Acceleration & Deacceleration
		if (moveLeft || moveRight || moveUp || moveDown)
		{
			//Speed limit
			if (speed < 500) 
			{
			  speed += acceleration;
			}
		}
		else if (speed > 0)
		{
			speed = speed - deacceleration;
		}
	}

	//Switches on or off gravity
	void Gravity()
	{
		if (gravityIsOn)
		{
			gravity.y = 0.2;
		}
		else if (gravityIsOn == false)
		{
			gravity.y = 0;
		}
	}

	//Does the calculation for the direction and speed (in other words the movement) of the player, also runs the bounce function
	void Move()
	{
		//Normalize and multiply with speed
		ballVelocity = ballDirection.normalize().mult(speed).mult(deltaTime);

		//add gravity if its on
		if (gravityIsOn)
		{
			ballVelocity = ballVelocity.add(gravity);
		}

		if (bounceIsOn) 
		{
		Bounce();
		}

		ballPosition.x += ballVelocity.x;
		ballPosition.y += ballVelocity.y;
	}

	//Makes a roof and a floor so the ball cant escape the picture, also makes a wrap so the ball goes to the other side of the screen if it goes outside either left or right
	void Constraints()
	{
		if (ballPosition.x < -halfSize)
		{
			ballPosition.x = width + halfSize;
		}
		else if (ballPosition.x > width + halfSize)
		{
			ballPosition.x = -halfSize;
		}
		ballPosition.y = constrain(ballPosition.y, halfSize, height);
	}

	//Makes the ball bounce of the floor
	void Bounce()
	{
		if (ballPosition.y > height - halfSize) 
		{
			ballVelocity.y = ballVelocity.y * -0.95;
			ballPosition.y = height - halfSize;
		}
	}

	void BackgroundEffect()
	{
		fill(256, 256, 256, 60);
		rect(0, 0, width, height);
	}
}