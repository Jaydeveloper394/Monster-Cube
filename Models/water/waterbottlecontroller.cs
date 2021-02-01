using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class waterbottlecontroller : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        Destroy(gameObject);
        ///object in inv
    }
}
