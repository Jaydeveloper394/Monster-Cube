using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NearItemGlow : MonoBehaviour
{
    //private Vector3 targetDirection;

    Behaviour halo;

    //private int boxWidth = 240;
    //private int boxHeight = 240;

    //private string displayText;
    void Start()
    {
        halo = (Behaviour)gameObject.GetComponent("Halo");
        halo.enabled = false;
        //displayText = "";
        //displayText += "";
    }


    public void EnableHalo()
    {
       
        halo.enabled = true;
        
    }

    public void DisableHalo()
    {
       
        halo.enabled = false;
        
    }

    //void OnGUI()
    //{
    //    int xCoord = (Screen.width - boxWidth) / 2;
    //    int yCoord = (Screen.height - boxHeight) / 2;

    //    if (targetDirection.magnitude < 12.0f)
    //        GUI.Box(new Rect(xCoord, yCoord, boxWidth, boxHeight), displayText);
    //}
}
