public class Human extends Character 
{
	boolean alive = true;

	public Human (float x, float y)
	{
		position = new PVector(x, y);

        //Create the velocity vector and give it a random direction.
        velocity = new PVector();
        Velocity();
        ChooseVelocity();

        //Ballsize and Color
        ballSize = int(random(15, 25));
        ballColor = new PVector();
        ChooseColor();
	}

	void ChooseVelocity()
	{
		velocity.normalize();
		velocity.x = velocity.x * 100;
        velocity.y = velocity.y * 100;
	}
}