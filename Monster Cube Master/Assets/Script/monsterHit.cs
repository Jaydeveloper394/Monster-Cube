using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class monsterHit : MonoBehaviour
{

    private Behaviour victimHalo;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
        
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            victimHalo = (Behaviour)other.GetComponent("Halo");
            victimHalo.enabled = true;

            other.GetComponent<StatusDecrease>().healthSlider.value -= 50; //decrease player health by 50 (out of 100)

        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            victimHalo.enabled = false;
        }
    }

}
