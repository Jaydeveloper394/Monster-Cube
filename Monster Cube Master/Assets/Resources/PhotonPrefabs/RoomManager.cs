using Photon.Realtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using UnityEngine.SceneManagement;
using System.IO;

public class RoomManager : MonoBehaviourPunCallbacks
{
    //Instaniates player Manager and Player Controller
    //makes sure they are automatically destroyed
    public static RoomManager Instance;
    
    bool Monster_Win = false;
    bool player_Win = false;

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

        AddingDictionary();

    }
    void Update()
    {
        CheckTime();
        Checkwin();
    }


    /// <summary>
    /// Get player's infor Dictionary
    /// </summary>
    private void AddingDictionary()
    {
        playerInfo = PhotonNetwork.CurrentRoom.Players;

        for (int i = 0; i < PhotonNetwork.CurrentRoom.PlayerCount; i++)
        {
            Debug.Log("playerInfo[" + i + "].UserId = " + playerInfo[i].UserId + "\n");


            if (playerInfo[i].IsMasterClient)
            {
                playerInfo.Remove(i);
                break;
            }
        }

    }


    private void CheckTime()
    {
        TimeLimited -= Time.deltaTime;
        if (TimeLimited == 0)
        {
            GameOver = true;
            Monster_Win = true;
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
            if (para_count == (PhotonNetwork.CurrentRoom.PlayerCount-1))
            {
                GameOver = true;
                Monster_Win = true;
            }
            if (PlayerController.Get_PlayerHasKeyANDTouchDoor())
            {
                GameOver = true;
                player_Win = true;
            }
        }
        else
        {
            //Frozen the game
            Time.timeScale = 0f;
        }

    }

}
