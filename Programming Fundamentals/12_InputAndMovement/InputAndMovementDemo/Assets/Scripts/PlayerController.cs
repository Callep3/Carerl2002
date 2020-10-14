using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
	[SerializeField]
	private float speed = 1f;
	[SerializeField]
	private int playerMovement;

	Rigidbody2D rb2d;

    private void Start()
    {
		rb2d = GetComponent<Rigidbody2D>();
    }

    // Update is called once per frame
    void FixedUpdate()
	{
		float x = Input.GetAxis("Horizontal");
		float y = Input.GetAxis("Vertical");

		Vector2 movement = new Vector2(x, y);

		if (movement.sqrMagnitude > 1)
		{
			movement = movement.normalized;
		}
		switch (playerMovement)
        {
			case 0:
				rb2d.velocity = movement * speed;
				break;
			case 1:
				movement = movement * speed * Time.deltaTime;

				transform.Translate(movement);
				break;
			case 2:
				rb2d.AddForce(movement * speed);
				break;
		}
        
	}
}