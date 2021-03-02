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

    public GameObject playerPrefab;


    // Start is called before the first frame update
    void Start()
    {
        //check if in room
        playerNum = PhotonNetwork.CurrentRoom.PlayerCount;
        Debug.Log(playerNum);
        //pick random player to be monster
        CreateController();


    }

    // Update is called once per frame
    void Update()
    {

        
        
    }

    void CreateController()
    {
        Vector3 spawn_pos = new Vector3(-170, 50, 990);
        Debug.Log("Instantiated Player Controller");
        //PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "PlayerTest"), spawn_pos, Quaternion.identity); //public vars that you put prefabs into
        Instantiate(playerPrefab, spawn_pos, Quaternion.identity); //doesnt work either??? why???
    }


}
