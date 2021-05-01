﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class battery : MonoBehaviour, IInventoryItem
{
    public string Name
    {
        get
        {
            return "battery";
        }
    }

    public Sprite _Image = null;

    public Sprite Image
    {
        get
        {
            return _Image;
        }
    }


    public void OnPickUp()
    {
        PhotonView pv = PhotonView.Get(this);
        pv.RPC("destroyItem", RpcTarget.MasterClient);
    }

    [PunRPC]
    public void destroyItem()
    {
        PhotonNetwork.Destroy(gameObject);
    }
}