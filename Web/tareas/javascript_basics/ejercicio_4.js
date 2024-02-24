// Ejercicio 4: Escribe una función que reciba una cadena de texto y regrese una nueva con la primer letra de cada palabra en mayúscula.

function cadena (o){
    let n = ""
    for (let i = 0; i < o.length; i++){
        if (i === 0){
            n = n + o[i].toUpperCase() 
        }

       else if (o[i] === " "){
            
            n = n + " "+ o[i+1].toUpperCase();
            i+=1
        }
        
        else {
            n = n + o[i] 
        }
        
        
}
    return n;
}

let o = "hoy es viernes";
let o2 = "no se yolo";

let funcionA = cadena (o);
let funcionB = cadena (o2);

console.log(funcionA);
console.log(funcionB);