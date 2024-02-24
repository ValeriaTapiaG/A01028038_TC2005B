//Escribe una función que calcule el máximo común divisor de dos números.

function mcd(n1,n2){
    primos=[2,3,5,7,9,13,17,19,23,29]
    let divisores=[]
    
    for (let i = 0; i < primos.length; i++){
        if (n1%primos[i]===0 && n2%primos[i]===0) {
            n1=n1/primos[i]
            n2=n2/primos[i]
            divisores.push(primos[i])
        }
    }
   // console.log(n1,n2)
   console.log(divisores)
   
    let resultado=divisores[0]

    for (let j = 1; j < divisores.length; j++){
        //let resultado=divisores[0]
        resultado=resultado*divisores[j]
        console.log(resultado)   
    }

    return resultado

}

let hola =mcd(30,20)
console.log(hola)



