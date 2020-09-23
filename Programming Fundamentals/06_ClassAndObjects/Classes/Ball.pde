class Ball
{
    //Our class variables
    PVector position, velocity;
    int ballSize = 30;

    //Ball Constructor, called when we type new Ball(x, y);
    Ball(float x, float y)
    {
        //Set our position when we create the code.
        position = new PVector(x, y);

        //Create the velocity vector and give it a random direction.
        velocity = new PVector();
        velocity.x = random(7) - 2;
        velocity.y = random(7) - 2;
    }

    //Update our ball
    void update()
    {
        ballBounce();
        position.x += velocity.x;
        position.y += velocity.y;
    }

    //Draw out the ball onto the screen
    void draw()
    {
        fill(192, 0, 0);
        ellipse(position.x, position.y, ballSize, ballSize);
    }

    //Balls will bounce
    void ballBounce()
    {
        if (position.x > width - ballSize / 2 || position.x < ballSize / 2) 
        {
            velocity.x = velocity.x * -1;
        }
        if (position.y > height - ballSize / 2 || position.y < ballSize / 2) 
        {
            velocity.y = velocity.y * -1;
        }
    }
}