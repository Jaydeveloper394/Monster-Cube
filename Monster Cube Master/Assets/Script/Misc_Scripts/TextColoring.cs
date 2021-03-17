using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class TextColoring : MonoBehaviour
{
    private TextMeshProUGUI text;

    private float timer = 0.0f;
    public float colorChangeFrequency;

    private List<Color> colorList = new List<Color>();
    private int colorIndex = 0;

    public int colorPatternLength;

    void Start()
    {
        text = GetComponent<TextMeshProUGUI>();
        for(int i = 0; i < colorPatternLength; i++)
        {
            colorList.Add(new Color(Random.value, Random.value, Random.value));
        }
    }

    void Update()
    {
        timer += Time.deltaTime;
        if(timer > colorChangeFrequency)
        {
            text.color = colorList[colorIndex];
            //uncomment if you want a random color every time instead of a pattern of random colors
            //colorList[colorIndex] = new Color(Random.value, Random.value, Random.value);
            colorIndex++;
            if (colorIndex >= colorList.Count)
                colorIndex = 0;
            timer = 0.0f;
        }
            
    }
}
