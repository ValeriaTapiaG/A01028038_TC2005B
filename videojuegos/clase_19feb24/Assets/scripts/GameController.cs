/*keep track of scores and ball status
valeria tapia 
2024-02-21
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController : MonoBehaviour
{
    public GameObject pelota;
    public float force;
    // Start is called before the first frame update
    void Start()
    {
        StartGame();
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void StartGame()
    {
   
        pelota.GetComponent<Rigidbody2D>().velocity=Random.onUnitSphere * force;
        
    }
}
