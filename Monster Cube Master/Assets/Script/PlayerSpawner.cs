using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using Photon.Pun;

//Anna S.
//This script is used to spawn players and monster
public class PlayerSpawner : MonoBehaviour
{
    //private variables
    private int playerNum;


    // Start is called before the first frame update
    void Start()
    {
        playerNum = PhotonNetwork.CurrentRoom.PlayerCount;
        Debug.Log(playerNum);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
