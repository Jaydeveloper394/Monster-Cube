using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using ExitGames.Client.Photon.StructWrapping;
using UnityEngine.Experimental.GlobalIllumination;

public class StatusDecrease : PlayerController
{
    //freeze function
        // disables controller and other stuff
    //unfreeze function -> both public 
    public Slider healthSlider;
    public float healthDropRate;
   
    private Vector3 respawnPosition;
    
    private int deathCount;

    public bool isparalyzed;

    
    IEnumerator DecreaseSlider(Slider slider, float dropRate)
     {
         if (slider != null)
         {
            float dropValue = (slider.maxValue / 1000);
            while (slider.value >= 0)
            {
             slider.value -= dropValue;
             yield return new WaitForSeconds(1 / dropRate);
             if(slider.value <= 0)
             {
                slider.value = 0.0f;
                break;
             }
            }
         }
         yield return null;
     }
     
   
    void Start()
    {
        respawnPosition = transform.position;
    }

    void Update()
    { 
       if(healthSlider.value <= 0)
       {
            FreezePlayer();
           
        }
       
    }

    private void FreezePlayer()
    {
        deathCount++;
        Debug.Log("Player health dropped to 0. Death Count: " + deathCount);
       
        //healthSlider.value = healthSlider.maxValue;
        

        isparalyzed = true;
      
        gameObject.GetComponent<CharacterController>().enabled = false;
        gameObject.GetComponent<CapsuleCollider>().enabled = true;
    }

    public void UnfreezePlayer()
    {
        healthSlider.value = healthSlider.maxValue;
        isparalyzed = false;

        gameObject.GetComponent<CharacterController>().enabled = true;
        gameObject.GetComponent<CapsuleCollider>().enabled = false;
        
        

    }

    
}
