using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class applecontroller : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Destroy(gameObject);
        ///object in inv
    }
}
