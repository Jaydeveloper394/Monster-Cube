using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public interface IInventoryItem { 
    string Name { get; }

    Sprite Image { get;  }

    void OnPickUp(); 

}

public class InventoryEventArgs : EventArgs
{
    public InventoryEventArgs(IInventoryItem item)
    {
        Item = item;
    }
    
    public InventoryEventArgs(int i_index)
    {
        itemIndex = i_index;
    }
    
    public IInventoryItem Item;
    public int itemIndex;
}