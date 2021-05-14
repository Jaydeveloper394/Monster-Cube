using Photon.Pun;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using Random = UnityEngine.Random;

public class PlayerController : MonoBehaviourPunCallbacks, IPunObservable
{
    //Debug
    [SerializeField]
    bool __NateDebug = true;
    public bool flag_key;

    //mark Player has key or not
    //public bool haskey =false;
     bool PlayerHasKey;
    public static bool PlayerHasKey_All;
    public bool PlayerWin;

    GameObject gameManager;

    GameObject interactionObject = null;

    #region Inventory Controller Variable Define

    public InventoryController inventory;

    #endregion

    #region PLayers flashlight Define

    public Light flashlight;
    private bool flashOn;
    public Slider batterylife;
    public float batteryDropRate;
    private bool flashlightdied = false;
    private bool is_flickering = false;

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

    public void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info)
    {
        if (stream.IsWriting)
        {
            stream.SendNext(PlayerWin);
            stream.SendNext(flashlight.enabled);

        }
        else
        {
            this.PlayerWin = (bool)stream.ReceiveNext();
            this.flashlight.enabled = (bool)stream.ReceiveNext();

        }
    }
    void Awake()
    {
        PV = GetComponent<PhotonView>();
    }

    // Start is called before the first frame update
    void Start()
    {
        if (__NateDebug)
        {
            foreach (var ga in PhotonNetwork.PlayerList)
            {
                    Debug.Log(this.gameObject.name +  "'s Haskey value: " + PlayerHasKey + "\n");
            }


        }

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
        if(Input.GetMouseButtonDown(0))
        {
            Interact();
        }

        /* if (PlayerHasKey )
         {
             Photon.Realtime.Player[] tf = PhotonNetwork.PlayerList;
             foreach (Photon.Realtime.Player cct in tf)
             {
                 PV.RPC("Get_PlayerHasKeyANDTouchDoor", cct);

             }


             if (__NateDebug)
             {
                 Debug.Log(PhotonNetwork.LocalPlayer.UserId + "'s Haskey value: " + PlayerHasKey + "\n");
             }
         }
         */
        FlashlightMechanic();
       
    }


    /// <summary>
    /// FLASHLIGHT STUFF
    /// </summary>
    private void FlashlightMechanic()
    {
        if (flashlightdied == false && batterylife.value >= 0)
        {
            //Debug.Log(batterylife.value + ": batterylife");
            if (flashOn)
            {
                //Debug.Log("Is Decreasing");
                batterylife.value -= (batteryDropRate * Time.deltaTime);
            }
        }
        if (flashlightdied == false && batterylife.value <= 20 && batterylife.value >= 18)
        {
            //Debug.Log("Battery Low");
            StartCoroutine(FlickerLight());


        }
        if (flashlightdied == false && batterylife.value <= 10 && batterylife.value >= 1)
        {
            //Debug.Log("Battery Low");
            StartCoroutine(FlickerLight());


        }
        if (flashlightdied == false && batterylife.value <= 0)
        {
            //Debug.Log("Battery out");
            flashlight.enabled = false;
            flashlightdied = true;
        }
        if (flashlightdied && batterylife.value > 0)
        {
            // Debug.Log("Flashlight has power");
            flashlight.enabled = true;
            flashOn = true;
            flashlightdied = false;
        }
    }
    
    IEnumerator FlickerLight()
    {
        flashlight.enabled = false;
        float timeDelay = Random.Range(.01f, .05f);
        yield return new WaitForSeconds(timeDelay);
        flashlight.enabled = true;
        timeDelay = Random.Range(.01f, .05f);
        yield return new WaitForSeconds(timeDelay);
    }
    
    /// <summary>
    /// move
    /// </summary>
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
                    if (flashlightdied == false)
                    {
                        flashlight.enabled = true;
                        flashOn = true;
                    }
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
        //when leaving the collider item no longer interactable
        if(other.gameObject == interactionObject)
        {
            interactionObject.GetComponent<NearItemGlow>().DisableHalo();
            interactionObject = null;
            Debug.Log(interactionObject);
        }
        
        /*//if inventory is full, make item obtainable again
        if (other.tag == "Item")
        {
            //other.isTrigger = false;
        }*/
    }

    
    //this is interacting with any object
    //gotta check what tag the object has
    //if item, do the pick up code
    //if other object, interact with object
    //if other player, unfreeze player
    private void OnTriggerEnter(Collider other)
    {
       //replace interaction object with the thing you've collided with
        if(other.gameObject.tag == "Object" || other.gameObject.tag == "Item" || other.gameObject.tag == "Player")
        {
            if(interactionObject != null)
            {
                interactionObject.GetComponent<NearItemGlow>().DisableHalo();
            }
            interactionObject = other.gameObject;
            interactionObject.GetComponent<NearItemGlow>().EnableHalo();

            Debug.Log(interactionObject.name);
        }
    }

    private void Interact()
    {
        if(interactionObject == null)
        {
            Debug.Log("interaction null");
            return;
        }
        else if (interactionObject.tag == "Item")
        {
            IInventoryItem item = interactionObject.GetComponent<IInventoryItem>();
            if (item != null)
            {
                Debug.Log("item exists");
                //Debug.Log("Detect collision with Item");
                if (photonView.IsMine)
                {
                    inventory.AddItem(item);
                    Debug.Log("Item added!");
                }
            }
        }
        else if(interactionObject.tag == "Player")
        {
            //put the player stuff in here!
            StatusDecrease status = interactionObject.GetComponent<StatusDecrease>();
            if(CheckPlayerParalyzed(status))
            {
                status.UnfreezePlayer();
            }
        }
        else if(interactionObject.tag == "Object")
        {
            //interactionObject.interact();
        }

    }
    
    /*private void OnControllerColliderHit(ControllerColliderHit hit)
    {
        IInventoryItem item = hit.collider.GetComponent<IInventoryItem>();
        

        ///Version 2.0 - Food, water, Key only for the valueable item for player
        if (item != null)
        {
            //Debug.Log("Detect collision with Item");
            if(photonView.IsMine)
            {
                inventory.AddItem(item);
            }
        }

        if (hit.collider.tag == "Door")
        {
            //Debug.Log("Collision Happened\n");

            flag_key = inventory.IncludeItem("key");

            if (flag_key)
            {
                //Debug.Log("Player got the key and collider with the door");
                PlayerWin = true;
                /*if(__NateDebug)
                {
                    Debug.Log("Playerwin");
                    PhotonNetwork.LoadLevel(3);
                    SceneManager.LoadScene("PlayerWinScene");
                }
                */
            //}

           /* if (__NateDebug)
            {
                if (PhotonNetwork.LocalPlayer.IsMasterClient && PlayerHasKey)
                {
                    Debug.LogWarning("Monster get the Player win condition \n");
                }
            }
            
        }
       

    }*/

    /// <summary>
    ///     Return the player's status : if player down?  return true : false;
    /// </summary>
    /// <param name="player"></param>  The parameter need to be a gameobject
    /// <returns></returns>  eturn a bool = true, if the player  is down

    public bool CheckPlayerParalyzed(StatusDecrease status)
    {
       return status.isparalyzed;
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
            Debug.Log(PhotonNetwork.LocalPlayer.UserId + "" + PlayerHasKey);
            //PhotonNetwork.SetMasterClient(photonView);
            //SceneManager.LoadScene("PlayerWinScene");
            if (false)
            {
                foreach (var ga in PhotonNetwork.PlayerList)
                {
                    if (PhotonNetwork.LocalPlayer.IsLocal)
                    {
                        Debug.Log(PhotonNetwork.LocalPlayer + "'s Haskey value: " + PlayerHasKey + "\n");
                    }
                    else if (PhotonNetwork.LocalPlayer.IsMasterClient)
                    {
                        Debug.Log(PhotonNetwork.LocalPlayer + "'s Haskey value: " +         PlayerHasKey + "\n");
                        SceneManager.LoadScene("PlayerWinScene");
                    }

                }


            }

            //Debug.Log("player get the key aand touch the door\n");
        }  
    }

   
    /*private void OnTriggerEnter(Collider other)
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
    }*/



}
