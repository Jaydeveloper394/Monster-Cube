using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Realtime;
using TMPro;
using Com.uci_167.shuaw11;

public class RoomListItem : MonoBehaviour
{
    [SerializeField] TMP_Text text;

    public RoomInfo info;

    public void SetUp(RoomInfo _info)
    {
        info = _info;

        //Room name change not be changed once it be created, 
        //     which according from the Photon Doc 01/26/2021
        if (_info.Name != null)
        {
            text.text = _info.Name;
        }
        else {
            text.text = "";
        }
       
    }

    public void OnClick()
    {
        Launcher.Instance.JoinRoom(info);
    }
}
