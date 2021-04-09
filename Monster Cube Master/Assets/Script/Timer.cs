using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour
{
    public float currentTime = 0.0f;
    public float startTime = 300.0f;

    public Text timerText;

    // Start is called before the first frame update
    void Start()
    {
        currentTime = startTime;
    }

    // Update is called once per frame
    void Update()
    {
        currentTime -= 1 * Time.deltaTime;
        timerText.text = "Time Remaining: " + currentTime.ToString("0");

        if(currentTime <= 0.0f)
        {
            currentTime = 0.0f;
            //Time's up for the player (Monster wins).
        }
    }
}
