﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviour
{
    #region Inventory Controller Variable Define

    public InventoryController inventory;
    public HUD Hud;

    #endregion


    #region PlayerController Variable Define
    [SerializeField]
    float speed = 4f;
    float sprintspeed = 10f;
    float gravity = 1f;
    float jumpSpeed = 10f;

    float energy = 10f;

    Vector3 movedirection;
    CharacterController mycontroller;


    #endregion

    // Start is called before the first frame update
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

        if(mycontroller.isGrounded)
        {
            movedirection = new Vector3(moveX, 0, moveZ);
            movedirection = transform.TransformDirection(movedirection);


            if(Input.GetKeyDown(KeyCode.Space))
            {
                movedirection.y += jumpSpeed;
            }

            if (Input.GetKey(KeyCode.LeftShift) && moveZ == 1)
            {
                movedirection *= sprintspeed;


            }else {
                movedirection *= speed;
            }
          
        }

        movedirection.y -= gravity;
        //make sure different frame got same speed;
        mycontroller.Move(movedirection * Time.deltaTime);

    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {


    }

    private void OnTriggerEnter(Collider other)
    {
        IInventoryItem item = other.GetComponent<IInventoryItem>();
        if (item != null)
        {
            Debug.Log("Detect the collision");
        }
        ///Version 2.0 - Food, water, Key only for the valueable item for player
        if (item != null)
        {
            // inventory.AddItem(item);
            //  item.OnPickUp();
            Hud.OpenMessagePanel("");
        }
    }

    private void OnTriggerExit(Collider other)
    {
        Hud.CloseMessagePanel("");
    }



}