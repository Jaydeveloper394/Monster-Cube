﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class key : MonoBehaviour, IInventoryItem
{
    public string Name
    {
        get
        {
            return "key";
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
