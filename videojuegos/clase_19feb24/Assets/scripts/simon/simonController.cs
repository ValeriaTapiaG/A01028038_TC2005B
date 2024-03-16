using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using TMPro;

public class SimonController : MonoBehaviour
{
    [SerializeField] private List<int> sequence;
    [SerializeField] private GameObject[] buttons;
    bool playerTurn = false;
    int index;

    int score=0;
    [SerializeField] private TMP_Text scoreText;

    float timeDif=0f;

    int level=0;

    [SerializeField] private TMP_Text levelText;

    // Start is called before the first frame update
    public void StartGame()
    {
        NewGame();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void NewGame(){
        sequence.Clear();
        score=0;
        index = 0;
        scoreText.text="score: "+ score.ToString();
        AddToSequence();
        

    }

    void AddToSequence(){
        playerTurn = false;
        index = 0;
        int num = Random.Range(0, buttons.Length);
        sequence.Add(num);
        StartCoroutine(PlaySequence());
    }

    IEnumerator PlaySequence(){
        yield return new WaitForSeconds(1-timeDif);
        foreach(int num in sequence){
            buttons[num].GetComponent<SimonButton>().HighLight();
            yield return new WaitForSeconds(1-timeDif);
        }
        playerTurn = true;
    }

    public void PlayerInput(int num){
        if(playerTurn){
            if(num == sequence[index]){
                index++;
                if(index == sequence.Count){
                    playerTurn = false;
                    index = 0;
                    score=score+1;
                    if (score%3==0){
                        timeDif=timeDif+0.2f;
                        level=level+1;
                        levelText.text="level: "+ level.ToString();
                    }
                    scoreText.text="score: "+ score.ToString();
                    
                    AddToSequence();

                }
            } else {
            PlayerPrefs.SetInt("score",score);
            SceneManager.LoadScene("texto");
               
            }
        }
    }
}