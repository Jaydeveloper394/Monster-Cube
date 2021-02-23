using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuManager : MonoBehaviour
{

    public static MenuManager Instance;

    [SerializeField] Menu[] menus;

    private void Awake()
    {
        Instance = this;
    }


    public void OpenMenu( string menuName)
    {
        for (int i = 0; i < menus.Length; i++)
        {
            if (menus[i].menuName == menuName)
            {
                //Reset so don't need to reload the anohter loop
                //increase the efficiency 
                menus[i].Open();
            }
            else if (menus[i].boolopen) {
                CloseMenu(menus[i]);
            
            }
        }
    }

    public void OpenMenu( Menu menu)
    {
        for (int i = 0; i < menus.Length; i++)
        {
            if (menus[i].boolopen)
            {
                CloseMenu(menus[i]);

            }
        }
        menu.Open();
    }
    public void CloseMenu(Menu menu)
    {
        menu.Close();
    }

    public void QuitApp()
    {
        Application.Quit();
        Debug.Log("Game is exiting");
        //Just to make sure its working
    }
/*    private void SendQuitEvent()
    {
        // send event, add your code here
        Photon.Pun.PhotonNetwork.SendAllOutgoingCommands(); // send it right now
    }*/
}

