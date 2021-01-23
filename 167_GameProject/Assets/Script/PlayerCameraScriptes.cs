﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerCameraScriptes : MonoBehaviour
{
    public float sensitivityOfMouse;
    [SerializeField]
    Transform Player;
    //Transform PlayerArms; 

    float xAxisclasmp;

    // Start is called before the first frame update
    void Start()
    {
        sensitivityOfMouse = 0.3f;
    }

    // Update is called once per frame
    void Update()
    {
        Cursor.lockState = CursorLockMode.Locked;
        RotateCamera();
    }
    void RotateCamera()
    {
        float mouseX = Input.GetAxis("Mouse X");
        float mouseY = Input.GetAxis("Mouse Y");

        float rotAmountX = mouseX * sensitivityOfMouse;
        float rotAmountY = mouseY * sensitivityOfMouse;

        xAxisclasmp -= rotAmountY;

        //Vector3 rotArms = PlayerArms.transform.rotation.eulerAngles;
        Vector3 rotPlayer = Player.transform.rotation.eulerAngles;

        rotPlayer.x -= rotAmountY;
        rotPlayer.y += rotAmountX;
        rotPlayer.z = 0;


        if (xAxisclasmp > 90)
        {
            xAxisclasmp = 90;
            rotPlayer.x = 90;
        }
        else if(xAxisclasmp < -90)
        {
            xAxisclasmp = -90;
            rotPlayer.x = 270;
        }

        Player.rotation = Quaternion.Euler(rotPlayer);
        //PlayerArms.rotation = Quaternion.Euler(rotArms);
    }
}
