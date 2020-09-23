public class Zombie extends Character 
{

	public Zombie (float x, float y) 
	{
		position = new PVector(x, y);

        //Create the velocity vector and give it a random direction.
        velocity = new PVector();
        Velocity();
        ChooseVelocity();

        //Ballsize and Color
        ballSize = 20;
        ballColor = new PVector();
        ChooseColor();
	}

	void ChooseVelocity()
    {
    	velocity.normalize();
        velocity.x = velocity.x * 50;
        velocity.y = velocity.y * 50;
    }

    void ChooseColor()
    {
        ballColor.x = 20;
        ballColor.y = 200;
        ballColor.z = 20;
    }
}