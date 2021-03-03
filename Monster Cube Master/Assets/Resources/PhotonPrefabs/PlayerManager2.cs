using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using System.IO;

public class PlayerManager2 : MonoBehaviour
{
    // Instaniates player controller object with Photon View making sure that it is only creating one for the owner/individual players
    //used to keep persistent player data
    //and recive info from other platers
    PhotonView PV;
    Vector3 spawnPoint; //create a list of spawn points later
   public GameObject playerPrefab;
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

    // Update is called once per frame
    void CreateController()
    {
        if(PhotonNetwork.IsMasterClient)
        {
            Vector3 spawn_pos = new Vector3(-186, 32, 992);
            Debug.Log("Instantiated Monster Controller");
            PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "SlimeyJoeGameVariant"), spawn_pos, Quaternion.identity); //public vars that you put prefabs into

        }
        else
        {
            Vector3 spawn_pos = new Vector3(-186, 32, 992);
            Debug.Log("Instantiated Player Controller");
            PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "PlayerTest"), spawn_pos, Quaternion.identity); //public vars that you put prefabs into
                                                                                                                    //Instantiate(playerPrefab, spawn_pos, Quaternion.identity); //doesnt work either??? why???
        }

    }

    void CreateMonsterController()
    {
        Vector3 spawn_pos = new Vector3(-132, 32, 1027);
        Debug.Log("Instantiated Monster Controller");
        PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "SlimeyJoeGameVariant"), spawn_pos, Quaternion.identity); //public vars that you put prefabs into

    }
}
