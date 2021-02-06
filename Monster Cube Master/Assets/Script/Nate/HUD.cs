using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HUD : MonoBehaviour
{
    #region Nate Debug
    public bool NateDebug = false;

    #endregion
    #region Nate Inventory Variable Setting
    public GameObject MessagePanel;
    public InventoryController Inventory;
    #endregion

    void Start()
    {
        Inventory.ItemAdded += InventoryScript_ItemAdded;

    }
    private void InventoryScript_ItemAdded(object sender, InventoryEventArgs e)
    {
        Transform inventoryPanel = transform.Find("Inventory");
        foreach (Transform slot in inventoryPanel)
        {
            //if(slot.GetComponent<)
            //Border to image
            //int childcount = slot.childCount;
            /**
             * Nate: 
             * 
             *  Try 1: 
             *      Null references:   Imagetransfor can't find the slot item information, but the collision happened.
             *  Try 2:
             *      use child to get the slot children untill get the image child.
             *      Then, try to give the Item image to it. Faild. Same reason with Try 1.
             *  Try 3:
             *      Detected the event item information in e, but can't give the e.image value (Sprite) type to Image    
            */
            Transform imagetransform = slot.GetChild(0).GetChild(0).transform;
            if (NateDebug)
                Debug.Log(imagetransform.name);

            Image image = imagetransform.GetComponent<Image>();
            if (NateDebug) 
                Debug.Log(image.sprite);
            //Sprite image = e.Item.Image;

            //Debug.Log(e.Item.Image);

            //ItemDragHandler
            //We found the empty slot

            if (image.enabled && image.sprite == null)
            {
                if (NateDebug)
                    Debug.Log("**************** Enter image Enabled **********");
                image.enabled = true;
                image.sprite = e.Item.Image;


                break;
            }
            else {
                continue;
            }
        }
    }
    public void OpenMessagePanel(string Text)
    {
        MessagePanel.SetActive(true);
    }

    public void CloseMessagePanel(string Text)
    {
        MessagePanel.SetActive(false);
    }

}
