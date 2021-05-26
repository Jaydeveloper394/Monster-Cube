using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;

public class objectInteraction : MonoBehaviour
{
    public string itemType = null;
    public GameObject animatedObject = null;
    public bool repeatable = false;
    public bool activated = false;


    public int leversLeft = 3;
    public GameObject console;
    public void interact()
    {
        //not active for none repeatable, dont care for repeatables
        if(itemType != null && !activated || activated && repeatable && itemType != null)
        {
            PhotonView pv = PhotonView.Get(this);

            if(itemType == "NLever")
            {
                pv.RPC("pullNormalLever", RpcTarget.AllBuffered);
            }
            else if(itemType == "Console")
            {
                pv.RPC("pullConsoleLever", RpcTarget.AllBuffered);
            }
        }
    }

    [PunRPC]
    public void pullNormalLever()
    {
        if(animatedObject.GetComponent<Animation>() != null)
        {
            animatedObject.GetComponent<Animation>().Play();
        }

        //remove one from console reference.
        console.GetComponent<objectInteraction>().leversLeft -= 1;
        activated = true;
    }

    [PunRPC]
    public void pullConsoleLever()
    {
        Animation ani = animatedObject.GetComponent<Animation>();

        //if there are still levers left, play stuck animation
        if(leversLeft > 0)
        {
            ani.Play("Stuck");
        }
        else
        {
            ani.Play("On");
            activated = true;
            gameObject.GetComponent<powerOn>().poweredOn = true;
        }

    }
}
