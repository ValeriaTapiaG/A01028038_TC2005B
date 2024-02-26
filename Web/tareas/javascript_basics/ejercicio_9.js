//Escribe una función que reciba como parámetro una lista de cadenas de texto, y regrese la longitud de la cadena más corta.

function shortest(array){
    let menor=array[0].length
    for (let i = 1; i < array.length; i++){
        //console.log(array[i].length)
        if (array[i].length<menor){
            menor=array[i].length
        }

    }

    return menor

}

let array = ["hola", "mundo","saludos","a"];
console.log(shortest(array)); 