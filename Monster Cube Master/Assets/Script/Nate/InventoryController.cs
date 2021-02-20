using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class InventoryController : MonoBehaviour
{
    #region  IInventory define
    private const int SLOTS = 6;

    private List<IInventoryItem> mItems = new List<IInventoryItem>();

    public event EventHandler<InventoryEventArgs> ItemAdded;

    #endregion

    /// <summary>
    /// AddItem  -  collect the Item into the inventory
    /// </summary>
    /// <param name="item"></param>
    public void AddItem(IInventoryItem item)
    {
        if (mItems.Count < SLOTS)
        {
            Collider collider = (item as MonoBehaviour).GetComponent<Collider>();

            if (collider.enabled)
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

    }
    
    public void UseItem(int itemSlot)
    {
       //IInventoryItem tempItem = mItems[itemSlot - 1];
       
/*        //food to recover hunger status
       if(tempItem.gameObject.tag == "Food")
       {
          
       }
       
       //water to recover thirst status
       if(tempItem.gameObject.tag == "Water")
       {
          
       }
       
       //delete item from list (if not an important item like a key)
       if(tempItem.gameObject.tag != "Key")
       {
          
       } */
    }
    
    public void DropItem(int itemSlot)
    {
       //IInventoryItem tempItem = mItems[itemSlot - 1];
       
       //Delete item from inventory and Re-instantiate item to player's current location
    }
    
    void Update()
    {
       if(Input.GetKey(KeyCode.Alpha1))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             DropItem(1);
          }
          else
          {
             UseItem(1);
          }
       }
       
       if(Input.GetKey(KeyCode.Alpha2))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             DropItem(2);
          }
          else
          {
             UseItem(2);
          }
       }
       
       if(Input.GetKey(KeyCode.Alpha3))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             DropItem(3);
          }
          else
          {
             UseItem(3);
          }
       }
       
       if(Input.GetKey(KeyCode.Alpha4))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             DropItem(4);
          }
          else
          {
             UseItem(4);
          }
       }
       
       if(Input.GetKey(KeyCode.Alpha5))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             DropItem(5);
          }
          else
          {
             UseItem(5);
          }
       }
       
       if(Input.GetKey(KeyCode.Alpha6))
       {
          if(Input.GetKey(KeyCode.LeftShift) || Input.GetKey(KeyCode.RightShift))
          {
             DropItem(6);
          }
          else
          {
             UseItem(6);
          }
       }
    }
}
