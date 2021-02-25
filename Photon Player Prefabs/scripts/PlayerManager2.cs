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
        }
    }

    // Update is called once per frame
    void CreateController()
    {
        Vector3 spawn_pos = new Vector3(0, 1, 0);
        Debug.Log("Instantiated Player Controller");
        PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "PlayerTest"), spawn_pos, Quaternion.identity);
    }
}
