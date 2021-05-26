using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class playerEscape : MonoBehaviour
{
    public bool poweredOn = false;
    public GameObject roomManager = null;

    private void OnTriggerEnter(Collider other)
    {
        Debug.Log("Player object entered elevator");
        if (other.tag == "Player" && poweredOn)
        {
            Debug.Log("yo wtf");
            PhotonView pv = PhotonView.Get(this);

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
}
