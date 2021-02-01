using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HUD : MonoBehaviour
{
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
            //Border to image
            int childcount = slot.childCount;

            Transform imagetransform = slot.GetChild(0).transform;
            Image image = imagetransform.GetComponent<Image>();
            //ItemDragHandler
            //We found the empty slot
            if (!image.enabled && image != null)
            {
                image.enabled = true;
                image.sprite = e.Item.Image;
                
                break; 
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
