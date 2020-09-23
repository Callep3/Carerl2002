public class BallManager
{
	//Just so that one ball spawn at the start of the game
	void setup()
	{
		//To make sure it doesnt spawn on the player
		PVector spawnLocation;
		spawnLocation = new PVector(random(30, width - 30), random(30, height - 30));
    	while (spawnLocation.x > myPlayer.ballPosition.x - 100 && spawnLocation.x < myPlayer.ballPosition.x + 100 && spawnLocation.y > myPlayer.ballPosition.y - 100 && spawnLocation.y < myPlayer.ballPosition.y + 100) 
    	{
			spawnLocation.x = random(30, width - 30);
			spawnLocation.y = random(30, height - 30);
		}
		//Spawns the balls (also has functionality to spawn multiple balls at the beginning)
		for(int i = 0; i < balls.length; i++)
	    {
	        balls[i] = (myBall = new Ball(spawnLocation.x, spawnLocation.y));
	    }
	}
	//Able to spawn balls later (this one is timed)
	void SpawnBall()
    {
    	//Makes a vector to easily compare the spawn location of a new ball and the current position of the player
    	PVector spawnLocation;
    	spawnLocation = new PVector(random(30, width - 30), random(30, height - 30));
    	//Timer for the ball to spawn every 3 seconds
        if (ballCooldown < time) 
        {
        	//The number decides how long it is between each ball spawn (a second is the number / 1000)
        	ballCooldown = time + 3000;
        	//Makes sure the ball is not on the player
        	while (spawnLocation.x > myPlayer.ballPosition.x - 100 && spawnLocation.x < myPlayer.ballPosition.x + 100 && spawnLocation.y > myPlayer.ballPosition.y - 100 && spawnLocation.y < myPlayer.ballPosition.y + 100) 
        	{
			spawnLocation.x = random(30, width - 30);
			spawnLocation.y = random(30, height - 30);
			}
			//Spawns the new ball and adds it to the balls[] array
            Ball b = new Ball(spawnLocation.x, spawnLocation.y);
			balls = (Ball[]) append(balls, b);
        }
    }
}