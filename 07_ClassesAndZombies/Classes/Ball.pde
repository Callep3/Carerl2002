class Ball
{
    //Our class variables
    PVector position, velocity, ballColor;
    int ballSize;
    int r, g, b;

    //Ball Constructor, called when we type new Ball(x, y);
    Ball(float x, float y)
    {
        //Set our position when we create the code.
        position = new PVector(x, y);

        //Create the velocity vector and give it a random direction.
        velocity = new PVector();
        velocity.x = random(7) - 2;
        velocity.y = random(7) - 2;

        //Ballsize and Color
        ballSize = int(random(10, 30));
        ballColor = new PVector(r, g, b);
        ballColor.x = random(100, 200);
        ballColor.y = random(100, 200);
        ballColor.z = random(100, 200);
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
        fill(int(ballColor.x), int(ballColor.y), int(ballColor.z));
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