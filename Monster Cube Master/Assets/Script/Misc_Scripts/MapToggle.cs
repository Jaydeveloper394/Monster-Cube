using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class MapToggle : MonoBehaviour
{
    private bool mazeEnabled;
    private bool forestEnabled;
    private bool laboratoryEnabled;

    public GameObject mazeImage;
    public GameObject forestImage;
    public GameObject laboratoryImage;

    PhotonView PV;

    void Start()
    {
        PV = GetComponent<PhotonView>();

        mazeEnabled = false;
        forestEnabled = false;
        laboratoryEnabled = false;

        mazeImage.SetActive(false);
        forestImage.SetActive(false);
        laboratoryImage.SetActive(false);
    }

    void Update()
    {
        checkMaze();
        checkForest();
        checkLaboratory();

        checkClearAllMaps();
    }

    void checkMaze()
    {
        if (Input.GetKeyDown(KeyCode.M))
        {
            mazeEnabled = !mazeEnabled;
        }

        if (mazeEnabled && PV.IsMine)
        {
            mazeImage.SetActive(true);
        }
        else
        {
            mazeImage.SetActive(false);
        }
    }

    void checkForest()
    {
        if (Input.GetKeyDown(KeyCode.F))
        {
            forestEnabled = !forestEnabled;
        }

        if (forestEnabled && PV.IsMine)
        {
            forestImage.SetActive(true);
        }
        else
        {
            forestImage.SetActive(false);
        }
    }

    void checkLaboratory()
    {
        if (Input.GetKeyDown(KeyCode.L))
        {
            laboratoryEnabled = !laboratoryEnabled;
        }

        if (laboratoryEnabled && PV.IsMine)
        {
            laboratoryImage.SetActive(true);
        }
        else
        {
            laboratoryImage.SetActive(false);
        }
    }

    void checkClearAllMaps()
    {
        if (Input.GetKeyDown(KeyCode.C))
        {
            mazeEnabled = false;
            forestEnabled = false;
            laboratoryEnabled = false;
        }
    }
}
