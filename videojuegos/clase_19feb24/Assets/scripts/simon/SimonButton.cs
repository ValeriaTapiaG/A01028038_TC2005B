/*
Highlight a button and detect when it is clicked

Gilberto Echeverria
2024-03-06
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SimonButton : MonoBehaviour
{
    Color originalColor;
   AudioSource audioEffect;

    void Start()
    {
        audioEffect = GetComponent<AudioSource>();
        originalColor = GetComponent<Image>().color;
    }

    public void HighLight()
    {
        StartCoroutine(ChangeColor());
    }

    IEnumerator ChangeColor()
    {
        GetComponent<Image>().color = Color.white;
       audioEffect.Play();
        yield return new WaitForSeconds(0.5f);
        GetComponent<Image>().color = originalColor;
    }

}