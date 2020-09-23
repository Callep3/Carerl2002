//Global variables for deltatime and time
float deltaTime = 0;
float time = 0;

public class DeltaTime 
{
	void DeltaTime() 
	{
		long currentTime = millis();
	    deltaTime = (currentTime - time) * 0.001f;
	    time = currentTime;
	}
}