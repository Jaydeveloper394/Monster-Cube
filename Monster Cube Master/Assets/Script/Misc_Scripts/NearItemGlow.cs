using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Photon.Pun;

public class NearItemGlow : MonoBehaviourPunCallbacks, IPunObservable
{
    //private Vector3 targetDirection;

     public Behaviour halo;

    PhotonView PV;

    //private int boxWidth = 240;
    //private int boxHeight = 240;

    //private string displayText;

    public void OnPhotonSerializeView(PhotonStream stream, PhotonMessageInfo info)
    {
        if (stream.IsWriting)
        {
            // We own this player: send the others our data
            stream.SendNext(halo.enabled);
        }
        else
        {
            // Network player, receive data
            this.halo.enabled = (bool)stream.ReceiveNext();
        }
    }
        void Start()
    {
        halo = (Behaviour)gameObject.GetComponent("Halo");
        halo.enabled = false;
        //displayText = "";
        //displayText += "";
    }


    public void EnableHalo()
    {
       
        halo.enabled = true;
        
    }

    public void DisableHalo()
    {
       
        halo.enabled = false;
        
    }

    //void OnGUI()
    //{
    //    int xCoord = (Screen.width - boxWidth) / 2;
    //    int yCoord = (Screen.height - boxHeight) / 2;

    //    if (targetDirection.magnitude < 12.0f)
    //        GUI.Box(new Rect(xCoord, yCoord, boxWidth, boxHeight), displayText);
    //}
}
