using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class monsterHit : MonoBehaviour

    
{
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
        if (other.gameObject.layer == 8)
        {
          other.GetComponent<StatusDecrease>().healthSlider.value -= 50; //decrease player health by 50 (out of 100)

        }
    }
}
