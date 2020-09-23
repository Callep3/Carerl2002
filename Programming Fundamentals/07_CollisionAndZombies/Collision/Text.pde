public class Text 
{
	void GameOverText()
	{
		if (zombies.length > humans.length)
		{
			if (timeOfDeath == 0)
			{
				timeOfDeath = int(time*0.001);
			}
			fill(0);
			textSize(100);
			textAlign(CENTER);
			text("Game Over", width / 2, height / 2);
			textSize(20);
			text("Time: " + timeOfDeath + " Seconds", width / 2, height / 2 + 20);
			return;
		}	
	}
}