using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimonController : MonoBehaviour
{
    [SerializeField] private List<int> sequence;
    [SerializeField] private GameObject[] buttons;
    bool playerTurn = false;
    int index;

    // Start is called before the first frame update
    void Start()
    {
        NewGame();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void NewGame(){
        sequence.Clear();
        index = 0;
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
        yield return new WaitForSeconds(1);
        foreach(int num in sequence){
            buttons[num].GetComponent<SimonButton>().HighLight();
            yield return new WaitForSeconds(1);
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
                    AddToSequence();
                }
            } else {
                NewGame();
            }
        }
    }
}