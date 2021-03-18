﻿using Photon.Pun;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerController : MonoBehaviourPunCallbacks
{
    //Debug
    [SerializeField]
    bool __NateDebug = false;


    //mark Player has key or not
    bool PlayerHasKey = false;
    bool PlayerHasKey_All = false;



    #region Inventory Controller Variable Define

    public InventoryController inventory;

    #endregion

    #region PLayers flashlight Define

    public Light flashlight;
    private bool flashOn;

    #endregion


    #region PlayerController Variable Define
    [SerializeField]
    float speed = 8f;
    float sprintspeed = 10f;
    float gravity = 1f;
    //float jumpSpeed = 10f;

    float energy = 10f;

    PhotonView PV;

    Vector3 movedirection;
    CharacterController mycontroller;


    #endregion

    void Awake()
    {
        PV = GetComponent<PhotonView>();
    }

    // Start is called before the first frame update
    void Start()
    {

        mycontroller = GetComponent<CharacterController>();
        flashOn = true;


        if (!PV.IsMine)
        {
            Destroy(GetComponentInChildren<Camera>().gameObject);
        }
        else
        {
            GetComponentInChildren<Canvas>().enabled = true;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if(!PV.IsMine)
        {
            return;
        }
        move();
        if (PlayerHasKey )
        {
            PV.RPC("Get_PlayerHasKeyANDTouchDoor", RpcTarget.AllBuffered);
        }
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
                if (flashOn){
                    flashlight.enabled = false;
                    flashOn = false;
                }
                else{
                    flashlight.enabled = true;
                    flashOn = true;
                }
                //movedirection.y += jumpSpeed;
            }

            if (Input.GetKey(KeyCode.LeftShift) && moveZ == 1)
            {
                movedirection *= sprintspeed;
                energy -= 2f;

            }else {
                movedirection *= speed;
            }
          
        }

        movedirection.y -= gravity;
        //make sure different frame got same speed;
        if (this.gameObject.GetComponent<StatusDecrease>().isparalyzed == false)
        {
            mycontroller.Move(movedirection * Time.deltaTime);
        }

    }
    

    public void ExitRoomInGameAndReload()
    {
        Destroy(this.gameObject);
       
        //Leave the Room
        PhotonNetwork.LeaveRoom();

        //Load the Room List menu
        PhotonNetwork.LoadLevel(0);
    }

    public bool Get_PlayerHasKey_All()
    {
        return PlayerHasKey_All;
    }

    private void OnTriggerExit(Collider other)
    {
       //if inventory is full, make item obtainable again
       if(other.tag == "Item")
       {
          other.isTrigger = false;
       }
    }

    private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        IInventoryItem item = hit.collider.GetComponent<IInventoryItem>();
        

        ///Version 2.0 - Food, water, Key only for the valueable item for player
        if (item != null)
        {
            //Debug.Log("Detect collision with Item");
            inventory.AddItem(item);
        }

        if (hit.collider.tag == "Door")
        {
            //Debug.Log("Collision Happened\n");

            bool flag_key = inventory.IncludeItem("key");

            if (flag_key)
            {
                //Debug.Log("Player got the key and collider with the door");
                PlayerHasKey = true;
            }
        }
       

    }

    /// <summary>
    ///     Return the player's status : if player down?  return true : false;
    /// </summary>
    /// <param name="player"></param>  The parameter need to be a gameobject
    /// <returns></returns>  eturn a bool = true, if the player  is down

    public bool CheckPlayerParalyzed(GameObject player)
    {

        Debug.LogWarning("The function didn't finished yet.");
        return false;
    }

    /// <summary>
    ///     Return The player get the Key and Touch the door at the saame Time
    /// </summary>
    /// <returns></returns> if yes, return true;
    [PunRPC]
    public void Get_PlayerHasKeyANDTouchDoor()
    {
        if (PlayerHasKey)
        {
            PlayerHasKey_All = true;

            //Debug.Log("player get the key aand touch the door\n");
        }  
    }

   
    private void OnTriggerEnter(Collider other)
    {
        if (__NateDebug)
        {
            Debug.Log("Player collision.");
        
        }
        if (other.gameObject.tag == "Player")
        {
            if (__NateDebug)
            {
                Debug.Log("Player collision.");

            }

            if (gameObject.GetComponent<StatusDecrease>().isparalyzed)
            {
                gameObject.GetComponent<StatusDecrease>().isparalyzed = false;
                gameObject.GetComponent<CapsuleCollider>().enabled = false;
                gameObject.GetComponent<CharacterController>().enabled = true;

            }
        }
    }



}
