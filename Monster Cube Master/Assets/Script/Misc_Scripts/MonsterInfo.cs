using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class MonsterInfo : MonoBehaviour
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
        displayText += "You are a Cube-Shaped Monster\n";
        displayText += "living in the abandoned facility.\n";
        displayText += "Your objective is to hunt down\n";
        displayText += "and tag all the players to prevent\n";
        displayText += "them from escaping.\n";
        displayText += "\n";
        displayText += "Here are the monster controls:\n";
        displayText += "Walk - WASD\n";
        displayText += "Turn Camera - Move Mouse\n";
        displayText += "Unbind/Rebind Mouse Cursor - esc\n";
        displayText += "Other Level Interactions - Mouse Click\n";
        displayText += "Hide/Unhide this Info Box - G\n";
        displayText += "\n";
        displayText += "Good Luck\n";
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.G))
        {
            GUIenabled = !GUIenabled;
        }
    }

    void OnGUI()
    {
        int xCoord = (Screen.width - boxWidth) / 2;
        int yCoord = (Screen.height - boxHeight) / 2;

        if (GUIenabled && PV.IsMine)
            GUI.Box(new Rect(xCoord, yCoord, boxWidth, boxHeight), displayText);
    }
}
