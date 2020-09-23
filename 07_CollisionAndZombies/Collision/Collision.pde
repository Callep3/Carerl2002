DeltaTime classDeltaTime;
//Humans
Human human;
Human[] humans;
int numberOfHumans = 99;
//Zombies
Zombie zombie;
Zombie[] zombies;
int numberOfZombies = 1;
CharacterManager characterManager;
//End Screen
Text gameText;
int timeOfDeath = 0;


void setup()
{
	surface.setLocation(80, 100);
	size(640,480);
	ellipseMode(CENTER);
	classDeltaTime = new DeltaTime();
	humans = new Human[numberOfHumans];
	zombies = new Zombie[numberOfZombies];
	zombie = new Zombie(200, 200);
	characterManager = new CharacterManager();
	gameText = new Text();
	characterManager.setup();
}

void draw()
{
	background(50, 166, 240);
	characterManager.update();
	characterManager.draw();

	gameText.GameOverText();

	classDeltaTime.DeltaTime();
	
	characterManager.CollisionCheck();
}