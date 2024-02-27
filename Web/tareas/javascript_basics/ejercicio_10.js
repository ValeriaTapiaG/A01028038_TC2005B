//Escribe una función que revise si una cadena de texto es un palíndromo o no

function palindromo(sentence){

    for (let i = 0 ; i < sentence.length/2; i++){

        if (sentence[i]!==sentence[sentence.length-i-1]){
            console.log("no palindromo")

            return "no es palindromo"
        }
        else {
            return "sí es palindromo"
        }



    }
}
let sentence="amor a roma"

console.log(palindromo(sentence))