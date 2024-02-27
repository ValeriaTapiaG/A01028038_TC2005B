//Escribe una función que tome una lista de números y devuelva una nueva lista con todos los números en orden descendente.
function bubbleSortDesc(array) {
    for (let i=array.length-1;i>=0;i--){
        for (let j=0;j<array.length;j++){

            if (array[j]<array[j+1]){
                let temp=array[j]
                array[j]=array[j+1]
                array[j+1]=temp
            }
        }

    }
    let arraynuevo=array
    return arraynuevo
}

let array = [3, 4, 7, 1, 9, 2];
console.log(bubbleSortDesc(array)); // Output: [9, 7, 4, 3, 2, 1]
