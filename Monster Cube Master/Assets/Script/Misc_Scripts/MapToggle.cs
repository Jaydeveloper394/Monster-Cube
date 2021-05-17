using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class MapToggle : MonoBehaviour
{
    private bool mapEnabled;
    private GameObject MapImage;

    PhotonView PV;

    // Start is called before the first frame update
    void Start()
    {
        PV = GetComponent<PhotonView>();

        mapEnabled = false;
        MapImage = GameObject.Find("MapImage");
        MapImage.SetActive(false);
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            mapEnabled = !mapEnabled;
        }

        if(mapEnabled && PV.IsMine)
        {
            MapImage.SetActive(true);
        }
        else
        {
            MapImage.SetActive(false);
        }

    }
}
