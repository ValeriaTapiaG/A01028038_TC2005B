/* script that moves the paddles in the pong game
valeria tapia 
a01028038
*/

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovePaddle : MonoBehaviour
{
    // Start is called before the first frame update
    public float speed;
    public float limit;
    public KeyCode moveUp;
    public KeyCode moveDown;


    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(moveUp)&& transform.position.y <limit){
            transform.Translate(Vector3.up*speed*Time.deltaTime);
        }
     else if (Input.GetKey(moveDown)&& transform.position.y > -limit){transform.Translate(Vector3.down*speed*Time.deltaTime);}
    }
}
