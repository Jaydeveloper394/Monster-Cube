// OG AUTHOR: ANNA
// Moves the Monster based on the player's input of the arrow keys

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MonsterController : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        move();
    }

    private void move()
    {
        //establishes 4 directional movement plus rotation
        if(Input.GetKey(KeyCode.DownArrow))
        {
            //go backwards
        }


    }
}
