public class CharacterManager 
{

	void setup()
	{
		for (int i = 0; i < humans.length; ++i) 
		{
			humans[i] = (human = new Human(random(0, width), random(0, height)));
		}
		for (int i = 0; i < zombies.length; ++i) 
		{
			zombies[i] = (zombie = new Zombie(random(0, width), random(0, height)));
		}
	}

	void update()
	{
		for (int i = 0; i < humans.length; ++i) 
		{
			humans[i].update();
		}

		for (int i = 0; i < zombies.length; ++i)
		{
			zombies[i].update();
		}
	}

	void draw()
	{
		for (int i = 0; i < humans.length; ++i) 
		{
			if (humans[i].alive == true) {
				humans[i].draw();
			}
		}
		for (int i = 0; i < zombies.length; ++i) {
			zombies[i].draw();	
		}
	}

	void CollisionCheck()
	{
		float spawnCd = 0;
		for (int i = 0; i < zombies.length; ++i) 
		{
			for (int n = 0; n < humans.length; ++n) 
			{
				if (humans[n].alive) 
				{	
					if (roundCollision(humans[n], zombies[i], n))
					{
						Zombie z = new Zombie(humans[n].position.x, humans[n].position.y);
						zombies = (Zombie[]) append(zombies, z);
						humans[n].alive = false;
					}	
				}
			}
		}
	}

	boolean roundCollision(Character one, Character two, int n)
	{
		float maxDistance = (one.ballSize + two.ballSize) / 2;

		if(abs(one.position.x - two.position.x) > maxDistance && humans[n].alive ||  
			abs(one.position.y - two.position.y) > maxDistance && humans[n].alive)
		{
			return false;
		}
		else if(dist(one.position.x, one.position.y, two.position.x, two.position.y) > maxDistance && humans[n].alive)
		{
			return false;
		}
		else
		{
			return true;
		}
	}
}