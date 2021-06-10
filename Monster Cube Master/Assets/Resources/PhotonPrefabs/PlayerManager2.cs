using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using System.IO;
using System;

public class PlayerManager2 : MonoBehaviour
{
    // Instaniates player controller object with Photon View making sure that it is only creating one for the owner/individual players
    //used to keep persistent player data
    //and recive info from other platers
    PhotonView PV;
    Vector3 spawnPoint; //create a list of spawn points later
    public GameObject playerPrefab;

    public GameObject[] playerTransformPosition;

    private int num = 0;

    // GameObject monsterPrefab;

    private void Awake()
    {
        PV = GetComponent<PhotonView>();
     
    }
    // Start is called before the first frame update
    void Start()
    {
        if(PV.IsMine)
         {
            CreateController();

            //CreateMonsterController();
             
             //CreateMonsterController();
             //function that gets random nickname
             //if nickname = our nickname
             //createmonstercontroller();
         }



    }


    private void Update()
    {

    }




    // Update is called once per frame
    void CreateController()
    {
        //Dictionary Key
        //int counter_palyerDic = 0;

        if(PhotonNetwork.IsMasterClient)
        {
            GameObject spawner = GameObject.FindGameObjectWithTag("MonsterSpawn");

            //Vector3 spawn_pos = new Vector3(-186, 37, 992);
            Vector3 spawn_pos = spawner.transform.position;
            Debug.Log("Instantiated Monster Controller");
            PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "SlimeyJoeGameVariant"), spawn_pos, Quaternion.identity); //public vars that you put prefabs into

        }
        else
        {
            //Tage  PlayerSpawn2 for palyer swpan 
            /*int num = 0;
            Vector3 spawn_pos = playerTransformPosition[num].position;

            string playerTag = "Player" + num;*/
            GameObject spawner = GameObject.FindGameObjectWithTag("PlayerSpawn2");
            Vector3 spawn_pos = spawner.transform.position;
            num++;
            if (num == 0)
            {
                spawner = GameObject.FindGameObjectWithTag("PlayerSpawn1");
                spawn_pos = spawner.transform.position;
            }
            if (num == 2)
            {
                spawner = GameObject.FindGameObjectWithTag("PlayerSpawn3");
                spawn_pos = spawner.transform.position;
            }
            if (num == 3)
            {
                spawner = GameObject.FindGameObjectWithTag("PlayerSpawn4");
                spawn_pos = spawner.transform.position;
            }


            Debug.Log("Instantiated Player Controller");
            PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "Player_Model Test"), spawn_pos, Quaternion.identity);
            //gb.transform.tag = playerTag;


            //public vars that you put prefabs into
                                                            //Instantiate(playerPrefab, spawn_pos, Quaternion.identity); //doesnt work either??? why???   =>  may be didn't haave the punview? 
           
        }

    }

   
}
