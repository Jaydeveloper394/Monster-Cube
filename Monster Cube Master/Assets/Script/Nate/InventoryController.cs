using System.Collections;
using System.Collections.Generic;
using UnityEngine;
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
}
