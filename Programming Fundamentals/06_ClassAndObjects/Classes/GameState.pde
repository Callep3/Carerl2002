class GameState
{
    //Gets the classes from the main file to be able to access them from here
    void GameRunning(Player myPlayer, Ball myBall, Ball[] balls, Collision collision, BallManager ballManager)
    {
        //If player is alive then you can move, and balls can still spawn
        if (playerIsAlive)
        {
            myPlayer.update();
            ballManager.SpawnBall();
        }
        //Makes sure the player is always shown, even when the game is over
        myPlayer.draw();
        //Updates all the balls so that if the player is alive, they move and if not they are frozen
        for (int i = 0; i < balls.length; i++)
        {
            if (playerIsAlive) 
            {
                balls[i].update();
            }
            balls[i].draw();
            //If the player collides with the ball then kill the player
            if (collision.roundCollision(int(myPlayer.ballPosition.x), int(myPlayer.ballPosition.y), myPlayer.size / 2, int(balls[i].position.x), int(balls[i].position.y), myBall.ballSize / 2)) 
            {
                playerIsAlive = false;
            }
        }
        //If player is dead then this gameover screen pops up
        if (playerIsAlive == false) 
        {
            fill(0);
            textAlign(CENTER);
            textSize(75);
            text("Game Over", width / 2, height / 2);
        }
    }
}