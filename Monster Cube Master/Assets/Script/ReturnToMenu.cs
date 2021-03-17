using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ReturnToMenu : MonoBehaviour
{
    public void loadMenuScene()
    {
        SceneManager.LoadScene("self_multiplyplayer");
    }

    public void quitApplication()
    {
        Application.Quit();
    }
}
