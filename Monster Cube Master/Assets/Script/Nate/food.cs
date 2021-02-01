using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class food : MonoBehaviour, IInventoryItem
{
    public string Name
    {
        get {
            return "food";        
        }
    }

    public Sprite _Image = null;

    public Sprite Image
    {
        get
        {
            return _Image;
        }
    }


    public void OnPickUp()
    {
        Destroy(gameObject);
    }
}
