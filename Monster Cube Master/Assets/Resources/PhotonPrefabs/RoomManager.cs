using Photon.Realtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using UnityEngine.SceneManagement;
using System.IO;
using System;

public class RoomManager : MonoBehaviourPunCallbacks
{
    //Instaniates player Manager and Player Controller
    //makes sure they are automatically destroyed
    public static RoomManager Instance;
    
    bool Monster_Win = false;
    bool player_Win = false;

    public static float scenceIndex = -1;

    //num
    public int para_count = 0;

    #region Win Condition Variables
    #region  private

    private bool reciv_playerStatus = false;
    private bool all_playerStatus = false;

    private bool GameOver = false;

    #endregion
    [SerializeField]
    float TimeLimited = 300f;

    public Dictionary<int, Photon.Realtime.Player> playerInfo;
    public List<GameObject> playersList;



    private bool __NateDebug = false;
    #endregion

    private void Awake()
    {
        if(Instance)
        {
            Destroy(gameObject);
            return;
        }
        DontDestroyOnLoad(gameObject);
        Instance = this;
    }
    // Start is called before the first frame update

    public override void OnEnable()
    {
        base.OnEnable();
        SceneManager.sceneLoaded += OnSceneLoaded;
    }

    public override void OnDisable()
    {
        base.OnDisable();
        SceneManager.sceneLoaded -= OnSceneLoaded;
    }

    void OnSceneLoaded(Scene scene, LoadSceneMode loadSceneMode)
    {
        //Load Sample Scence
        if(scene.buildIndex == 1)
        {
            //Debug.Log("build index is 1!");
            PhotonNetwork.Instantiate(Path.Combine("PhotonPrefabs", "PlayerManager"), Vector3.zero, Quaternion.identity);
            Debug.Log("instantiated player manager");
        }
    }
     void Start()
    {
        playersList.AddRange(GameObject.FindGameObjectsWithTag("Player"));

        foreach (var pplayer in playersList)
        {
            pplayer.GetComponent<PlayerController>();
        }

       // AddingDictionary();

    }
    void Update()
    {

        Checkwin();
    }

    private void FixedUpdate()
    {
        CheckTime();
    }
/**
   //Using  Local variable to justice, so didn't use the PUN function to decide
    /// <summary>
    /// Get player's infor Dictionary
    /// </summary>
    private void AddingDictionary()
    {
        playerInfo = PhotonNetwork.CurrentRoom.Players;

        if (playerInfo != null)
        {
            for (int i = 0; i < PhotonNetwork.CurrentRoom.PlayerCount; i++)
            {
*//*                if (playerInfo[i] != null)
                {
                    Debug.Log("playerInfo[" + i + "].UserId = " + playerInfo[i].UserId + "\n");
                }*//*


                if (playerInfo[i].IsMasterClient)
                {
                    playerInfo.Remove(i);
                    break;
                }
            }
        }
        

    }
*/

    private void CheckTime()
    {
        TimeLimited -= Time.deltaTime;
        if (TimeLimited <= 0)
        {
            GameOver = true;
            Monster_Win = true;
            scenceIndex = 2;
        }

        if (__NateDebug)
        {
            Debug.Log("TimeLimited = " + TimeLimited + "\n");
        }
        
    }

    


    /// <summary>
    /// check the game is win or not
    ///     Currently Win condition: 
    ///         1. Anyone touch the door with the key
    ///         2. Time out 5mins
    ///         3. All down
    /// </summary>
    private void Checkwin()
    {
        if (!GameOver)
        {
            //Check the number of the paralyed
            para_count = CountParalyzed();

 /*           if (PhotonNetwork.CurrentRoom.PlayerCount == 1)
            {
                GameOver = true;
                player_Win = true;
            }
            */
            if ( para_count == (PhotonNetwork.CurrentRoom.PlayerCount - 1))
            {
                GameOver = true;
                Monster_Win = true;
            }


            GameObject gb_temp = GameObject.FindGameObjectWithTag("Player");
            if ( (gb_temp != null) && gb_temp.GetComponent<PlayerController>().Get_PlayerHasKey_All())
            {
                Debug.Log("gb_temp.GetComponent<PlayerController>().Get_PlayerHasKey_All = " + gb_temp.GetComponent<PlayerController>().Get_PlayerHasKey_All() + "\n");


                Debug.LogWarning("Game over");
                GameOver = true;
                player_Win = true;
                Monster_Win = false;
                scenceIndex = 3;
            }
        }
        else
        {
            showWinText();
        }

    }


    /// <summary>
    /// show who win the game
    /// </summary>
    private void showWinText()
    {
       if(Monster_Win)
       {
            //prevent loading the scene every frame
             Monster_Win = false;
             SceneManager.LoadScene("MonsterWinScene");
             //Invoke("KickRoom", 3);

            
        }

       if(player_Win)
       {
                        //prevent loading the scene every frame
            player_Win = false;
            SceneManager.LoadScene("PlayerWinScene");
            //Invoke("KickRoom", 3);
            //PhotonNetwork.LoadLevel(3);

        }
    }

    public void KickRoom()
    {
        PhotonNetwork.LeaveRoom(true);
    }



    /// <summary>
    /// Get the number of paralyzed players
    /// 
    /// </summary>
    private int CountParalyzed()
    {
        para_count = 0;
        GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
        foreach (GameObject player in players)
        {
            bool para = player.GetComponent<StatusDecrease>().isparalyzed;
            if (para)
            {
                para_count++;
            }
        }

        return para_count;
    }
}
