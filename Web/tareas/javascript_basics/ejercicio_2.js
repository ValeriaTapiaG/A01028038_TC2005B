//Escribe una función que implemente el algoritmo 'bubble-sort' para ordenar una lista de números.

function bubblesort(array){

    for (let i=array.length;i>=0;i--){
        for (let j=0;j<array.length;j++){

            if (array[j]>array[j+1]){
                let temp=array[j]
                array[j]=array[j+1]
                array[j+1]=temp
            }


        }

    }

    return array
}

let array = [3,4,7,1,9,2]


console.log(bubblesort(array))