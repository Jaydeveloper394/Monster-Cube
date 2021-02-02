// OG AUTHOR: ANNA
// Moves the Monster based on the player's input of the arrow keys

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterController : MonoBehaviour
{ 


    //private variables
    private float moveSpeed = 5.0f;
    private float turnSpeed = 30.0f;

    private Rigidbody rigidBody;

    // Start is called before the first frame update
    void Start()
    {
        rigidBody = GetComponent<Rigidbody>();
        
    }

    // Update is called once per frame
    void Update()
    {
        Move();
        Turn();
    }

    private void Move()
    {
        //establishes 4 directional movement plus rotation
        float moveDirection = 0;
        if(Input.GetKey(KeyCode.DownArrow))
        {
            //go backwards
            moveDirection = -1;
           
        }
        else if(Input.GetKey(KeyCode.UpArrow))
        {
            moveDirection = 1;
        }
        Vector3 movement = transform.forward * moveDirection * moveSpeed * Time.deltaTime;

        rigidBody.MovePosition(rigidBody.position + movement);


        




    }

    private void Turn()
    {
        float turnDirection = 0;
        if(Input.GetKey(KeyCode.RightArrow))
        {
            turnDirection = 1;
        }
        else if(Input.GetKey(KeyCode.LeftArrow))
        {
            turnDirection = -1;
        }

        float turn = turnDirection * turnSpeed * Time.deltaTime;

        Quaternion rotate = Quaternion.Euler(0f, turn, 0f); //turns around the y axis

        rigidBody.MoveRotation(rigidBody.rotation * rotate);
    }
}
