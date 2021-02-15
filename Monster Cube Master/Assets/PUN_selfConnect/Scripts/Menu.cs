using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class Menu : MonoBehaviour
{
    public string menuName;
    public bool boolopen;


    public void Open()
    {
        boolopen = true;
        gameObject.SetActive(true);
    }
    public void Close()
    {
        boolopen = false;
        gameObject.SetActive(false);
    }
}
