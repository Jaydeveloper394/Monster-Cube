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
    
    public void decreaseHealth()
    {
       StartCoroutine(DecreaseSlider(healthSlider, healthDropRate));
    }
    
    public void decreaseThirst()
    {
       StartCoroutine(DecreaseSlider(thirstSlider, thirstDropRate));
    }
    
    public void decreaseHunger()
    {
       StartCoroutine(DecreaseSlider(hungerSlider, hungerDropRate));
    }
    
    IEnumerator DecreaseSlider(Slider slider, float dropRate)
     {
         if (slider != null)
         {
            float dropValue = (slider.value / 100);
            while (slider.value >= 0)
            {
             slider.value -= dropValue;
             yield return new WaitForSeconds(1 / dropRate);
             if (slider.value <= 0)
                  break;
            }
         }
         yield return null;
     }
     
   
    void Start()
    {
        decreaseHunger();
        decreaseThirst();
    }

    void Update()
    {
        
    }
}
