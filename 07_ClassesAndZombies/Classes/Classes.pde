//Variables
int numberOfBalls = 1;
DeltaTime classDeltaTime;
boolean playerIsAlive = true;
float ballCooldown = 3000;
//Classes
Player myPlayer;
Ball myBall;
Ball[] balls;
Collision collision;
BallManager ballManager;
GameState gameState;


void setup()
{
    size(640,480);
    ellipseMode(CENTER);
    //Class init
    myPlayer = new Player(width / 2, height / 2);
    balls = new Ball[numberOfBalls];
    collision = new Collision();    
    gameState = new GameState();
    classDeltaTime = new DeltaTime();
    ballManager = new BallManager();
    //To make sure not to have a null point exception
    ballManager.setup();
}

void draw()
{
    //Sets background
    myPlayer.BackgroundEffect();
    //background(50, 166, 240);

    //Fixes Delta Time and updates the game Time
    classDeltaTime.DeltaTime();

    //Runs the game
    gameState.GameRunning(myPlayer, myBall, balls, collision, ballManager);
}