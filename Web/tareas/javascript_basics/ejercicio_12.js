//Escribe una función que tome una array de números y devuelva la mediana y la moda.


function calcularMedianaYModa(array) {

    let longitud = array.length
    let mitad = Math.floor(longitud / 2)


    let arrayOrdenada = array.slice().sort((a, b) => a - b)

    let mediana;
    if (longitud % 2 === 0) {
        mediana = (arrayOrdenada[mitad - 1] + arrayOrdenada[mitad]) / 2
    } else {
        mediana = arrayOrdenada[mitad]
    }


    let conteo = {}
    let maxFrecuencia = 0
    let moda

    array.forEach(num => {
        conteo[num] = (conteo[num] || 0) + 1
        if (conteo[num] > maxFrecuencia) {
            maxFrecuencia = conteo[num];
            moda = num;
        }
    });

    return { mediana, moda };
}


const numeros = [3, 5, 6, 7, 8, 9, 9, 9, 10, 12];
const resultado = calcularMedianaYModa(numeros);
console.log('Mediana:', resultado.mediana);
console.log('Moda:', resultado.moda);
