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

    public GameObject prevCondition = null;
    public bool prevMet = false;
    PhotonView pv;

    private void Start()
    {
        PhotonView.Get(this);
    }

    public void interact()
    {
        if (prevCondition != null)
        {
            pv.RPC("checkPreReq", RpcTarget.AllBuffered);
        }

        //not active for none repeatable, dont care for repeatables
        if (itemType != null && !activated || activated && repeatable && itemType != null)
        {
            if (itemType == "NLever")
            {
                pv.RPC("pullNormalLever", RpcTarget.AllBuffered);
            }
            else if (itemType == "Console")
            {
                pv.RPC("pullConsoleLever", RpcTarget.AllBuffered);
            }
            else if (itemType == "genLock")
            {
                pv.RPC("genUnlock", RpcTarget.AllBuffered);
            }
            else if (itemType == "conLock")
            {
                pv.RPC("conUnlock", RpcTarget.AllBuffered);
            }
            else if (itemType == "conButton")
            {
                pv.RPC("conPress", RpcTarget.AllBuffered);
            }
        }
    }

    [PunRPC]
    public void pullNormalLever()
    {
        if (prevMet)
        {
            animatedObject.GetComponent<Animation>().Play();
            activated = true;
        }
    }

    [PunRPC]
    public void pullConsoleLever()
    {
        Animation ani = animatedObject.GetComponent<Animation>();

        ani.Play("On");
        activated = true;
        gameObject.GetComponent<powerOn>().poweredOn = true;

    }

    [PunRPC]
    public void genUnlock()
    {
        //open door
        animatedObject.GetComponent<Animation>().Play();
        activated = true;
    }

    [PunRPC]
    public void conUnlock()
    {
        if (prevMet)
        {
            //open door
            animatedObject.GetComponent<Animation>().Play();
            activated = true;
        }
    }

    [PunRPC]
    public void conPress()
    {
        if (prevMet)
        {
            gameObject.GetComponent<MeshRenderer>().enabled = false;
            activated = true;
        }
    }

    [PunRPC]
    public void checkPreReq()
    {
        prevMet = prevCondition.GetComponent<objectInteraction>().activated;
    }
}
