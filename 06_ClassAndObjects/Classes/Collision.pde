public class Collision  
{
	//Copy pasted collision from the assignment
	boolean roundCollision(int x1, int y1, int size1, int x2, int y2, int size2)
	{
	  int maxDistance = size1 + size2;

	  if(abs(x1 - x2) > maxDistance || abs(y1 - y2) > maxDistance)
	  {
	    return false;
	  }
	  else if(dist(x1, y1, x2, y2) > maxDistance)
	  {
	    return false;
	  }
	  else
	  {
	   return true;
	  }
	}
}