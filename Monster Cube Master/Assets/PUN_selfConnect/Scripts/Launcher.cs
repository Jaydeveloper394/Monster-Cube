using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Photon.Pun;
using Photon.Realtime;
using Photon.Chat;
using TMPro;


namespace Com.uci_167.shuaw11
{
    public class Launcher : MonoBehaviourPunCallbacks
    {

        #region PUN network Setting 


        public static Launcher Instance; 

        /// <summary>
        ///  Room setting
        /// </summary>
        [SerializeField] TMP_InputField roomNameInputField;
        [SerializeField] TMP_Text errorText;
        [SerializeField] TMP_Text roomNameText;
        [SerializeField] Transform roomListContent;
        [SerializeField] GameObject roomListItemPrefeb;
        [SerializeField] GameObject startGameButton;

        /// <summary>
        ///  Player setting
        /// </summary>
        [SerializeField] Transform playerListContent;
        [SerializeField] GameObject playerListItemPrefeb;


        #endregion




        #region Private Serializable Fields

        #endregion





        #region Private Fields

        /// <summary>
        ///  This is the Client Version Number
        /// </summary>
        string gameVersion = "1";
        #endregion



        #region  MonoBehaviour CallBacks

        /// <summary>
        /// MonoBehaviour method called on GameObject by Unity during early initialization phase.
        /// </summary>
        void Awake()
        {
            // PhotonNetwork.AutomaticallySyncScene = true;
            Instance = this;
        }



        void Start()
        {
            //Version 1.1
            PhotonNetwork.ConnectUsingSettings();


            //PhotonNetwork.ConnectMethod.ConnectToMaster;

            //Version 1.0
            //Connect();
        }


        #endregion




        #region MonoBehaviourPunCallbacks Callbacks

        #region  Connect

        /// <summary>
        /// Version 1.0
        /// Start the connection process.
        /// - If already connected, we attempt joining a random room
        /// - if not yet connected, Connect this application instance to Photon Cloud Network
        /// </summary>
        public void Connect()
        {

            if (PhotonNetwork.IsConnected)
            {
                // #Critical: The first we try to do is to join a potential existing room. 
                //            If there is, good, else, we'll be called back with OnJoinRandomFailed()
                PhotonNetwork.JoinRandomRoom();
            }
            else
            {
                PhotonNetwork.ConnectUsingSettings();
                PhotonNetwork.GameVersion = gameVersion;
            }
        }

        #endregion



        



        /// <summary>
        /// OnConnectedToMaster
        /// </summary>
        public override void OnConnectedToMaster()
        {
            Debug.Log("Connected to Master");
            PhotonNetwork.JoinLobby();
            PhotonNetwork.AutomaticallySyncScene = true;
        }



        /// <summary>
        /// OnJoinedLobby
        /// 
        /// </summary>
        public override void OnJoinedLobby()
        {
            MenuManager.Instance.OpenMenu("title");
            Debug.Log("Join Lobby");
            PhotonNetwork.NickName = "Player" + Random.Range(0,100).ToString("000");
        }



        /// <summary>
        /// CreateRoom
        /// 
        /// </summary>
        public void CreateRoom()
        {
            if (string.IsNullOrEmpty(roomNameInputField.text))
            {
                return;            
            }

            RoomOptions newRoomOptions = new RoomOptions();
            newRoomOptions.MaxPlayers = 5;
            PhotonNetwork.CreateRoom(roomNameInputField.text, newRoomOptions, null);
            MenuManager.Instance.OpenMenu("loading");
        }





        /// <summary>
        /// OnCreateRoomFailed
        /// </summary>
        /// <param name="returnCode"></param>
        /// <param name="message"></param>
        public override void OnCreateRoomFailed(short returnCode, string message)
        {
            errorText.text = "Room Creation Failed: " + message;
            MenuManager.Instance.OpenMenu("error");
        }


        //Begin to start the game, and load the roomPrefeb Scence
        public void StartGame()
        {
            //set Auto Sync
            //bool AutomaticallySyncScene = true;

            PhotonNetwork.LoadLevel(1);

            //private int monsterRandom = Random(0,6);
            //send Numbeer /event to Local
            
        }



        /// <summary>
        /// LeaveRoom
        /// 
        /// </summary>
        public void LeaveRoom()
        {
            PhotonNetwork.LeaveRoom();

            MenuManager.Instance.OpenMenu("loading");
        }




        /// <summary>
        /// OnLeftRoom
        /// 
        /// </summary>
        public override void OnLeftRoom()
        {
            MenuManager.Instance.OpenMenu("title");    
        }




        /// <summary>
        /// OnRoomListUpdate
        /// 
        /// </summary>
        /// <param name="roomList"></param>
        public override void OnRoomListUpdate(List<RoomInfo> roomList)
        {
            //Bugfixed: because every time creat or join another room will cause
            //  last room player info still inyour room, so we need to delete them.
            foreach (Transform child in playerListContent)
            {
                Destroy(child.gameObject);
            }

            //del first, then write the New button into the Image area
            foreach (Transform trans in roomListContent)
            {
                Destroy(trans.gameObject);
            }

            for (int i = 0; i < roomList.Count; i++)
            {
                //pun2 only set the RemovedFromLIst Boolean be true
                // check then skip it;
                if (roomList[i].RemovedFromList)
                {
                    continue;
                }

                Instantiate(roomListItemPrefeb, roomListContent).GetComponent<RoomListItem>().SetUp(roomList[i]);
            }
        }




        /// <summary>
        /// 
        /// 
        /// </summary>
        public override void OnJoinedRoom()
        {
            MenuManager.Instance.OpenMenu("room");
            roomNameText.text = PhotonNetwork.CurrentRoom.Name;

            //we need to loop to find every player and get their info to display
            // so we need to use PhotonNetwork to setup a player list 
            // Then loop it and Instantiate every PlayerListItem Object

            Player[] players = PhotonNetwork.PlayerList;
            
            //Fixed the bug player will never exit the room which has been destroyed
            foreach (Transform child in playerListContent)
            {
                Destroy(child.gameObject);
            }

            //setup the player's prefeb
            foreach (var cplayer in players)
            {
                Instantiate(playerListItemPrefeb, playerListContent).GetComponent<PlayerListItem>().SetUp(cplayer);
            }

            startGameButton.SetActive(PhotonNetwork.IsMasterClient);
        }

        public override void OnMasterClientSwitched(Player newMasterClient)
        {
            startGameButton.SetActive(PhotonNetwork.IsMasterClient);
        }





        /// <summary>
        /// JoinRoom
        /// Verision 2
        /// </summary>
        /// <param name="info"></param>
        public void JoinRoom(RoomInfo info)
        {
            PhotonNetwork.JoinRoom(info.Name);
            MenuManager.Instance.OpenMenu("loading");

           

        }




        /// <summary>
        /// OnPlayerEnteredRoom
        ///  version 2
        /// </summary>
        /// <param name="newPlayer"></param>
        public override void OnPlayerEnteredRoom(Player newPlayer)
        {
            Instantiate(playerListItemPrefeb, playerListContent).GetComponent<PlayerListItem>().SetUp(newPlayer);

        }


        /**
        /// <summary> OnConnected() 
        /// Version 1.0
        /// 
        /// </summary>
        public override void OnConnected()
        {
            Debug.Log("PUN Basics Tutorial/Launcher: OnConnectedToMaster() was called by PUN");
        }

        public override void OnDisconnected(DisconnectCause cause)
        {
            Debug.LogWarningFormat("PUN Basics Tutorial/Launcher: OnDisconnected() was called by PUN with reason {0}", cause);
        }


        public override void OnJoinRandomFailed(short returnCode, string message)
        {
            Debug.Log("PUN Basics Tutorial/Launcher:OnJoinRandomFailed() was called by PUN. No random room available, so we create one.\nCalling: PhotonNetwork.CreateRoom");
            
            // #Critical: we failed to join a random room, maybe none exists or they are all full. 
            // No worries, we create a new room.
            PhotonNetwork.CreateRoom(null, new RoomOptions());

        }

        public override void OnJoinedRoom()
        {
            Debug.Log("PUN Basics Tutorial/Launcher: OnJoinedRoom() called by PUN. Now this client is in a room.");
        }

        */
        #endregion



    }
}
