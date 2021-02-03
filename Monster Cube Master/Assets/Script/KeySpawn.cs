using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KeySpawn : MonoBehaviour
{
    public GameObject[] keyLocations;
    public GameObject key;

    private bool[] keys;
    void Start()
    {
        keyLocations = GameObject.FindGameObjectsWithTag("KeySpawn");
        keys = new bool[keyLocations.Length];
        for (int i = 0; i<keyLocations.Length; i++){
            keys[i] = false;
        }
        spawnKey();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void spawnKey()
    {
        int count = 0;
        while(true){
            if (count == 3){
                break;
            }
            int spawn = Random.Range(0, keyLocations.Length);
            if (keys[spawn]){
                continue;
            }
            else{
                GameObject.Instantiate(key, keyLocations[spawn].transform.position, Quaternion.identity);
                keys[spawn] = true;
                count +=1;
            }
        }
    }
}
