using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class water : MonoBehaviour, IInventoryItem
{
    public string Name
    {
        get
        {
            return "water";
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
        gameObject.SetActive(false);
    }
}
