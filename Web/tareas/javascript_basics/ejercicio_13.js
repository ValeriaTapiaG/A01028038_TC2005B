//Escribe una función que tome una lista de cadenas de texto y devuelva la cadena más frecuente.

function cadenaMasFrecuente(lista) {

    let count = {}
    let maxcount = 0
    let cadenaMasFrecuente = lista[0] 


    for (let i = 0; i < lista.length; i++) {
        let cadena = lista[i]
        if (count[cadena] === undefined) {
            count[cadena] = 1
        } else {
            count[cadena]++
        }



        if (count[cadena] > maxcount) {
            maxcount = count[cadena]
            cadenaMasFrecuente = cadena
        }
    }

    return cadenaMasFrecuente
}

let lista = ["hola", "hola","adios", "adios","adios", "adios", "hola", "saludos", "adios", "hola"];
let resultado = cadenaMasFrecuente(lista);
console.log(resultado)
