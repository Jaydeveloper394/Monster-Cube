using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class playerEscape : MonoBehaviour
{
    public GameObject animatedObject = null;

    public bool poweredOn = false;
    public GameObject roomManager = null;

    public GameObject[] levers;
    PhotonView pv;

    private void Start()
    {
        pv = PhotonView.Get(this);
    }

    private void Update()
    {
        if(!poweredOn)
        {
            checkLevers();
        }
    }

    private void checkLevers()
    {
        int numLeversOn = 0;
        for(int i = 0; i < levers.Length; i++)
        {
            if(levers[i].GetComponent<objectInteraction>().activated == true)
            {
                numLeversOn++;
            }
        }

        if (numLeversOn == levers.Length)
        {
            pv.RPC("openDoor", RpcTarget.AllBuffered);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Player object entered elevator");
        if (other.tag == "Player" && poweredOn)
        {
            if(pv.IsMine)
            {
                Debug.Log("yo wtf photonview");
                pv.RPC("playerWin", RpcTarget.AllBuffered);
            }
        }
    }

    [PunRPC]
    public void playerWin()
    {
        Debug.Log("Win condition");
        roomManager.GetComponent<RoomManager>().player_Win = true;
        roomManager.GetComponent<RoomManager>().GameOver = true;
        Debug.Log("Post room manager condition");
    }

    [PunRPC]
    public void openDoor()
    {
        poweredOn = true;
        animatedObject.GetComponent<Animation>().Play();
    }
}
