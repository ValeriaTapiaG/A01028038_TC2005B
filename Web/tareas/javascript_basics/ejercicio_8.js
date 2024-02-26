//Escribe una función que quite los elementos duplicados de un arreglo y regrese una lista con los elementos que quedan.

function quitaduplicados(array){

    let unicos=[]

    for (let i=0; i<array.length;i++){
        for (let j=0;j<array.length;j++){
            if (array[i]===array[j]){
                unicos.push(i)
            }
        }
    }
    return unicos
}

let array=[1,0,1,1,0,0]

console.log(quitaduplicados(array))