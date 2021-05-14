using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IngameObject : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public virtual void Interact()
    {
        //funtion that all child classes will overrride
        Debug.Log("Interacted with" + gameObject.name);
    }
}
