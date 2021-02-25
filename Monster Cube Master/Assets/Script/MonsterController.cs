﻿// OG AUTHOR: ANNA
// Moves the Monster based on the player's input of the arrow keys

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class MonsterController : MonoBehaviour
{
    #region PlayerController Variable Define
    [SerializeField]
    float speed = 4f;
    float sprintspeed = 10f;
    float gravity = 1f;
    

    float energy = 10f;

    Vector3 movedirection;
    CharacterController mycontroller;


    #endregion

    void Start()
    {
        mycontroller = GetComponent<CharacterController>();

    }

    // Update is called once per frame
    void Update()
    {
        move();
        
    }
    void move()
    {
        float moveX = Input.GetAxis("Horizontal");
        float moveZ = Input.GetAxis("Vertical");

        if (mycontroller.isGrounded)
        {
            movedirection = new Vector3(moveX, 0, moveZ);
            movedirection = transform.TransformDirection(movedirection);


            /*if (Input.GetKeyDown(KeyCode.Space))
            {
                movedirection.y += jumpSpeed;
            }*/

            if (Input.GetKey(KeyCode.LeftShift) && moveZ == 1)
            {
                movedirection *= sprintspeed;
                energy -= 2f;

            }
            else
            {
                movedirection *= speed;
            }

        }

        movedirection.y -= gravity;
        //make sure different frame got same speed;
        mycontroller.Move(movedirection * Time.deltaTime);

    }

    




    /*
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
    }*/
}
