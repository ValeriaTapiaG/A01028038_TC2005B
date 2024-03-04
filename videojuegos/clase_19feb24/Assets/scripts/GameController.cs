/*keep track of scores and ball status
valeria tapia 
2024-02-21
*/
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;


public class GameController : MonoBehaviour
{
    public GameObject pelota;

    public GameObject pelotaPrefab;
    public float force;

    public int pointsLeft=0;

    public int pointsRight=0;
    // Start is called before the first frame update

    public TMP_Text leftScore;
    public TMP_Text rightScore;
    void Start()
    {
        StartGame();
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R)){
            Destroy(pelota);
            StartGame();
        }
        
    }

    void StartGame()
    {
        pelota = Instantiate(pelotaPrefab);
        pelota.GetComponent<Rigidbody2D>().velocity=Random.onUnitSphere * force;
        
    }

    public void AddPoints(int side){
        if(side == 1){
            pointsLeft++;
            leftScore.text=pointsLeft.ToString();
        }else{
            pointsRight++;
            rightScore.text=pointsRight.ToString();
        }
        Destroy(pelota);
        StartGame();
    }
}

