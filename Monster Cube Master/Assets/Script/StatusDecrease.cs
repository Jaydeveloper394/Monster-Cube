using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StatusDecrease : MonoBehaviour
{
    public Slider healthSlider;
    public Slider thirstSlider;
    public Slider hungerSlider;
    
    public float healthDropRate;
    public float thirstDropRate;
    public float hungerDropRate;
    
    private bool thirstIsDropping;
    private bool hungerIsDropping;
    
    public void decreaseThirst()
    {
       thirstIsDropping = true;
       StartCoroutine(DecreaseSlider(thirstSlider, thirstDropRate));

    }
    
    public void decreaseHunger()
    {
       hungerIsDropping = true;
       StartCoroutine(DecreaseSlider(hungerSlider, hungerDropRate));
    }
    
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
        hungerIsDropping = true;
        decreaseHunger();
        
        thirstIsDropping = true;
        decreaseThirst();
    }

    void Update()
    {
        if(thirstSlider.value <= 0)
        {
           thirstIsDropping = false;
           float dropValue = (healthSlider.maxValue * healthDropRate / 10000);
           healthSlider.value -= dropValue;
        }
        
        //if both thirst and hunger are 0, health drops at double the speed
        if(hungerSlider.value <= 0)
        {
           hungerIsDropping = false;
           float dropValue = (healthSlider.maxValue * healthDropRate / 10000);
           healthSlider.value -= dropValue;
        }
        
        //after regaining thirst / hunger from an item, continue dropping
        if(!thirstIsDropping && thirstSlider.value > 0)
        {
           decreaseThirst();
        }
        
        if(!hungerIsDropping && hungerSlider.value > 0)
        {
           decreaseHunger();
        }
        
        if(healthSlider.value <= 0)
        {
           Debug.Log("Player health dropped to 0");
        }
        
        
        //only for debugging purposes
        if(Input.GetKey(KeyCode.Alpha1) || Input.GetKey(KeyCode.Alpha4))
        {
           healthSlider.value += 0.2f;
           if(healthSlider.value > healthSlider.maxValue)
           {
              healthSlider.value = healthSlider.maxValue;
           }
        }
        
        //only for debugging purposes
        if(Input.GetKey(KeyCode.Alpha2) || Input.GetKey(KeyCode.Alpha5))
        {
           thirstSlider.value += 0.3f;
           if(thirstSlider.value > thirstSlider.maxValue)
           {
              thirstSlider.value = thirstSlider.maxValue;
           }
        }
        
        //only for debugging purposes
        if(Input.GetKey(KeyCode.Alpha3) || Input.GetKey(KeyCode.Alpha6))
        {
           hungerSlider.value += 0.2f;
           if(hungerSlider.value > hungerSlider.maxValue)
           {
              hungerSlider.value = hungerSlider.maxValue;
           }
        }
        
        
    }
}
