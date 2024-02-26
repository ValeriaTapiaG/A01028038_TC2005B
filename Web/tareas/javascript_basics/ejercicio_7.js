//Escribe una función que reciba un número, y regrese una lista con todos sus factores. Por ejemplo: factoriza(12) -> [1, 2, 3, 4, 6, 12].

function factoriza(n){

    let factores=[]
    for (let i=1;i<=n;i++ ){
        //console.log(i)

        if (n%i===0){
            factores.push(i)

        }
    }

    return factores

}

let n=12
console.log(factoriza(12))
