public class Character
{
    //Our class variables
    PVector position, velocity, ballColor;
    int ballSize;
    

    void Velocity()
    {
        velocity.x = random(-1, 1);;
        velocity.y = random(-1, 1);;
    }

    void ChooseColor()
    {
        ballColor.x = 20;
        ballColor.y = 60;
        ballColor.z = random(128, 256);
    }

    //Update our ball
    void update()
    {
        Wrap();
        position.x += velocity.x * deltaTime;
        position.y += velocity.y * deltaTime;
    }

    //Draw out the ball onto the screen
    void draw()
    {
        fill(int(ballColor.x), int(ballColor.y), int(ballColor.z));
        ellipse(position.x, position.y, ballSize, ballSize);
    }

    //Balls will bounce
    void Wrap()
    {
        //Right
        if (position.x > width + ballSize / 2) 
        {
            position.x = -ballSize / 2; 
        }
        //Left
        if (position.x < -ballSize / 2) 
        {
            position.x = width + ballSize / 2;
        }
        //Bottom
        if (position.y > height + ballSize / 2) 
        {
            position.y = -ballSize / 2;
        }
        //Top
        if (position.y < -ballSize / 2) 
        {
            position.y = height + ballSize / 2;
        }
    }

}