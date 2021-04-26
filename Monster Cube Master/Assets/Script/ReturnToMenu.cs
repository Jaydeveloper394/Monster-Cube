using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ReturnToMenu : MonoBehaviour
{
    public void loadMenuScene()
    {
        //make sure 0 is lobby scene, or change accordingly
        SceneManager.LoadScene(0);
    }

    public void quitApplication()
    {
        Application.Quit();
    }
}
