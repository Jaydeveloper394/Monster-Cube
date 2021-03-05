using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemSpawn : MonoBehaviour
{

    public GameObject[] foodLocations;
    public GameObject food;

    public GameObject[] waterLocations;
    public GameObject water;

    private bool[] w;
    private bool[] f;
    // Start is called before the first frame update
    void Start()
    {
        foodLocations = GameObject.FindGameObjectsWithTag("FoodSpawn");
        waterLocations = GameObject.FindGameObjectsWithTag("WaterSpawn");

        w = new bool[waterLocations.Length];
        f = new bool[foodLocations.Length];

        spawnWater();
        spawnFood();
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void spawnWater()
    {
        for (int i = 0; i<waterLocations.Length; i++){
            GameObject newWater = Instantiate(water, waterLocations[i].transform.position, Quaternion.identity);
            newWater.transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
        }
    }

    private void spawnFood()
    {
        for (int i = 0; i<foodLocations.Length; i++){
            GameObject newFood = Instantiate(food, foodLocations[i].transform.position, Quaternion.identity);
            newFood.transform.localScale = new Vector3(0.1f, 0.1f, 0.1f);
        }
    }
}
