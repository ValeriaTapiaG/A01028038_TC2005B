//Escribe una función que encuentre el primer carácter de un cadena de texto que no se repite. Prueba tu función con: 'abacddbec'
function encontrar(texto) {

    let dict = {} //dict vacio

    //recorrer toda la palabra gracias a len
    for (let i = 0; i < texto.length; i++) {
        let letras = Object.keys(dict) //un array con los keys que tiene mi dict

        //si el array de key contiene una letra que ya estaba, solo se le arrega al value +1
        if (letras.includes(texto[i])) {
            dict[texto[i]]++
        }

        else {
            //si no hacemos un nuevo key con value de 1
            dict[texto[i]] = 1
        }
    }

    console.log(dict) //probando

    //para encontrar el primero

    //nuevo array con los keys otra vez (no usamos el mismo porque ese era solo del for)
    let listaobjeto = Object.keys(dict)
    //lo usamos para después saber cuantas keys tiene nuestro dict y poder recorrerlo en el for
    console.log(listaobjeto)
    for (let i = 0; i < listaobjeto.length; i++) {

        //si el value es igual  a 1 (lo sacamos con su respectiva key)
        if (dict[listaobjeto[i]] === 1) {
            //regresa esa key y sale de la funcion
            return listaobjeto[i]
        }

    }



}


let texto = 'abababacjab'

console.log(encontrar(texto));

