// OG AUTHOR: ANNA
// Moves the Monster based on the player's input of the arrow keys

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using UnityEngine.SceneManagement;

public class MonsterController : MonoBehaviour
{
    #region PlayerController Variable Define
    [SerializeField]
    float speed = 4f;
    float sprintspeed = 10f;
    float gravity = 1f;
    

    float energy = 10f;

    public bool PlayerHasKey_All = false;
    public bool PlayerHasKey = false;

    PhotonView PV;

    Vector3 movedirection;
    CharacterController mycontroller;

    private float turnSpeed = 30.0f;

    private Rigidbody rigidBody;



    #endregion

    void Awake()
    {
        PV = GetComponent<PhotonView>();
    }

    void Start()
    {
        mycontroller = GetComponent<CharacterController>();
        rigidBody = GetComponent<Rigidbody>();

        if (!PV.IsMine)
        {
            Destroy(GetComponentInChildren<Camera>().gameObject);
        }

    }

    // Update is called once per frame
    void Update()
    {
       if(PV == null)
        {
            Debug.Log("photon view on monster is null");
        }
        if(!PV.IsMine)
        {
            return;
        }
        move();
        turn();
        if (PlayerHasKey)
        {
            Debug.Log(PlayerHasKey + "*********\n");
            Debug.Log(PlayerHasKey_All + "------------\n");

        }
        

        if (PlayerHasKey_All)
        {
            SceneManager.LoadScene("PlayerWinScene");
        }
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

    private void turn()
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

        //rigidBody.MoveRotation(rigidBody.rotation * rotate);
        transform.Rotate(0, turn, 0);

        
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
