using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class InventoryController : MonoBehaviour
{
    public Slider healthSlider;
    public Slider thirstSlider;
    public Slider hungerSlider;
    public Slider batterySlider;

    private bool mouseClicked;
   
    #region  IInventory define
    private const int SLOTS = 6;

    private List<IInventoryItem> mItems = new List<IInventoryItem>();

    public event EventHandler<InventoryEventArgs> ItemAdded;
    public event EventHandler<InventoryEventArgs> ItemRemoved;

    #endregion

    /// <summary>
    /// AddItem  -  collect the Item into the inventory
    /// </summary>
    /// <param name="item"></param>
    public void AddItem(IInventoryItem item)
    {
/*        if (item.Name == "key")
        {
            GameObject gb = GameObject.FindGameObjectWithTag("Player");
            gb.GetComponent<PlayerController>().haskey = true;
        }*/

        if (mItems.Count < SLOTS)
        {
            Collider collider = (item as MonoBehaviour).GetComponent<Collider>();
            
            if(collider.enabled && mouseClicked)
            {
                collider.enabled = false;
                
                mItems.Add(item);
              
                item.OnPickUp();

                if(ItemAdded != null)
                {
                    ItemAdded(this, new InventoryEventArgs(item));
                }
            }
        }
        else
        {
           Collider collider = (item as MonoBehaviour).GetComponent<Collider>();
           collider.isTrigger = true;
           Debug.Log("Inventory is full.");
        }
        
    }
    
    public void UseItem(int itemSlot)
    {
       if(itemSlot <= mItems.Count)
       {
       
          string itemName = mItems[itemSlot - 1].Name;
          
          if(itemName == "food")
          {
             Debug.Log("Using item: " + itemName);
             //recover hunger status
             hungerSlider.value += 20;
             if(hungerSlider.value > hungerSlider.maxValue)
             {
                hungerSlider.value = hungerSlider.maxValue;
             }
          }
          
          if(itemName == "water")
          {
             Debug.Log("Using item: " + itemName);
             //recover thirst status
             thirstSlider.value += 20;
             if(thirstSlider.value > thirstSlider.maxValue)
             {
                thirstSlider.value = thirstSlider.maxValue;
             }
          }

            if (itemName == "battery")
            {
                Debug.Log("Using item: " + itemName);
                //recover battery
                batterySlider.value += 35;
                if (batterySlider.value > batterySlider.maxValue)
                {
                    batterySlider.value = batterySlider.maxValue;
                }
            }

          
          if(itemName != "key")
          {
             //delete item from list if not key
             mItems.RemoveAt(itemSlot - 1);
             
             if(ItemRemoved != null)
             {
                 ItemRemoved(this, new InventoryEventArgs(itemSlot - 1));
             }
          }
          else
          {
             Debug.Log("Key item cannot be consumed.");
          }
       
       }
       
    }
    
    public void DropItem(int itemSlot)
    {
       if(itemSlot <= mItems.Count)
       {
            string itemName = mItems[itemSlot - 1].Name;
            Debug.Log("Discarding item: " + itemName);
            
            mItems.RemoveAt(itemSlot - 1);
            
            if(ItemRemoved != null)
            {
                ItemRemoved(this, new InventoryEventArgs(itemSlot - 1));
            }
       }
    }

    public bool IncludeItem(string ItemName)
    {
        foreach (var item in mItems)
        {
            if (item.Name == ItemName)
            {
                return true;
               
            }
        }
        return false;
    }
    
    void Update()
    {
       if(Input.GetKeyDown(KeyCode.Alpha1))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             //DropItem(1);
          }
          else
          {
             UseItem(1);
          }
       }
       
       if(Input.GetKeyDown(KeyCode.Alpha2))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             //DropItem(2);
          }
          else
          {
             UseItem(2);
          }
       }
       
       if(Input.GetKeyDown(KeyCode.Alpha3))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             //DropItem(3);
          }
          else
          {
             UseItem(3);
          }
       }
       
       if(Input.GetKeyDown(KeyCode.Alpha4))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             //DropItem(4);
          }
          else
          {
             UseItem(4);
          }
       }
       
       if(Input.GetKeyDown(KeyCode.Alpha5))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             //DropItem(5);
          }
          else
          {
             UseItem(5);
          }
       }
       
       if(Input.GetKeyDown(KeyCode.Alpha6))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             //DropItem(6);
          }
          else
          {
             UseItem(6);
          }
       }

       if(Input.GetMouseButtonDown(0))
       {
           mouseClicked = true;
       }
       else
       {
           mouseClicked = false;
       }
    }
}
