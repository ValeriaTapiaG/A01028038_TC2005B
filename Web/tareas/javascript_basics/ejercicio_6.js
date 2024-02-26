//Crea una función que cambie una cadena de texto a 'Hacker Speak'. Por ejemplo, para la cadena 'Javascript es divertido', su hacker speak es: 'J4v45c1pt 35 d1v3rt1d0'.

function hackerspeak(sentence){

    const dicthacker={b: "8", h:"#", o:"0", l :"1",  a: "4", 
    e: "3", g: "6", i: "1", q: "9",  s: "5", t: "7",
    z: "2", v:"V"
}
    //console.log(dicthacker[0])

    let sentenceinhackerspeak=""


    for(let i=0; i<sentence.length;i++){
        
        

        

        let keysdict = Object.keys(dicthacker) //un array con los keys que tiene mi dict


        if (keysdict.includes(sentence[i])){
        
            //console.log("sentence"+" "+sentence[i])

         //console.log(dicthacker[sentence[i]])

         sentenceinhackerspeak=sentenceinhackerspeak+dicthacker[sentence[i]]

           //console.log(sentenceinhackerspeak)
        }

        else{
            sentenceinhackerspeak=sentenceinhackerspeak+sentence[i]


        }
    }

    return sentenceinhackerspeak


}

let sentence = 'valeria'

console.log(hackerspeak(sentence));
