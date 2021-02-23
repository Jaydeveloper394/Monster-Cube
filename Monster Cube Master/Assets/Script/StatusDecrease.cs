using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class StatusDecrease : MonoBehaviour
{
    public Slider healthSlider;
    public Slider thirstSlider;
    public Slider hungerSlider;
    
    public float healthDropRate;
    public float thirstDropRate;
    public float hungerDropRate;
    
    public Vector3 respawnPosition;
    
    private bool thirstIsDropping;
    private bool hungerIsDropping;
    
    private int deathCount;
    
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
           float dropValue = (healthSlider.maxValue * healthDropRate * Time.deltaTime / 36);
           healthSlider.value -= dropValue;
        }
        
        //if both thirst and hunger are 0, health drops at double the speed
        if(hungerSlider.value <= 0)
        {
           hungerIsDropping = false;
           float dropValue = (healthSlider.maxValue * healthDropRate * Time.deltaTime / 36);
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
           deathCount++;
           Debug.Log("Player health dropped to 0. Death Count: " + deathCount);
           transform.position = respawnPosition;
           healthSlider.value = healthSlider.maxValue;
           //SceneManager.LoadScene(SceneManager.GetActiveScene().name);
        }
        
    }
}
