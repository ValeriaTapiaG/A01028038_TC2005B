function esPotenciaDeDos(numero) {

    for (let i = 1; i <= numero; i *= 2) {
        if (i === numero) {
            return true
        }
    }

    return false
}

let numero=16
console.log(esPotenciaDeDos(numero)); 

