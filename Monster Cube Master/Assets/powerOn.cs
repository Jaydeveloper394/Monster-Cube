using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class powerOn : MonoBehaviour
{
    public bool poweredOn = false;
    private bool activated = false;

    public GameObject elevator;
    public GameObject elevatorDoor;
    
    // Update is called once per frame
    void Update()
    {
        if(poweredOn && !activated)
        {
            PhotonView pv = PhotonView.Get(this);

            pv.RPC("powerAll", RpcTarget.AllBuffered);
        }
    }

    [PunRPC]
    public void powerAll()
    {
        elevator.GetComponent<playerEscape>().poweredOn = true;
        elevatorDoor.GetComponent<Animation>().Play();
    }
}
