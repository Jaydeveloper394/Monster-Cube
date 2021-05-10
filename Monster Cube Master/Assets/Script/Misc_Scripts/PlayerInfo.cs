using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class PlayerInfo : MonoBehaviour
{
    private int boxWidth = 240;
    private int boxHeight = 240;

    private string displayText;
    private bool GUIenabled;

    PhotonView PV;
    void Awake()
    {
        PV = GetComponent<PhotonView>();
    }

    void Start()
    {
        GUIenabled = true;
        displayText = "Welcome to Monster Cube.\n";
        displayText += "You are a player character\n";
        displayText += "trapped in the abandoned facility.\n";
        displayText += "Your objective is to escape by\n";
        displayText += "searching for clues and key items\n";
        displayText += "to uncover the path out.\n";
        displayText += "\n";
        displayText += "Here are the player controls:\n";
        displayText += "Walk - WASD\n";
        displayText += "Turn Camera - Move Mouse\n";
        displayText += "Unbind/Rebind Mouse Cursor - esc\n";
        displayText += "Use Item in Slot - 1-6\n";
        displayText += "Other Level Interactions - Mouse Click\n";
        displayText += "Hide/Unhide this Info Box - G\n";
        displayText += "Good Luck\n";
    }

    void Update()
    {
        if(Input.GetKeyDown(KeyCode.G))
        {
            GUIenabled = !GUIenabled;
        }
    }

    void OnGUI()
    {
        int xCoord = (Screen.width - boxWidth) / 2;
        int yCoord = (Screen.height - boxHeight) / 2;

        if(GUIenabled && PV.IsMine)
            GUI.Box(new Rect(xCoord, yCoord, boxWidth, boxHeight), displayText);
    }
}
