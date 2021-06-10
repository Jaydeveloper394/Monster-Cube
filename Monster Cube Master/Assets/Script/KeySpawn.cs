using Photon.Pun;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KeySpawn : MonoBehaviour
{
    public GameObject[] keyLocations;
    public GameObject[] keyCardLocations;
    public GameObject key;
    public GameObject keyCard;

    private int kspawn;
    private int kcspawn;

    private bool[] keys;
    void Start()
    {
        keyLocations = GameObject.FindGameObjectsWithTag("KeySpawn");
        keyCardLocations = GameObject.FindGameObjectsWithTag("KeyCardSpawn");
        spawnKey();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void spawnKey()
    {
        kspawn = Random.Range(0, keyLocations.Length);
        kcspawn = Random.Range(0, keyCardLocations.Length);

        GameObject newKey = PhotonNetwork.Instantiate("key", keyLocations[kspawn].transform.position, Quaternion.identity);
        GameObject newKeyCard = PhotonNetwork.Instantiate("KeyCard", keyCardLocations[kcspawn].transform.position, Quaternion.identity);
    }
}
