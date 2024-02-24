function invertir (a) {
    let r = []
    
    for (let i = a.length - 1; i >= 0; i--){
        r.push(a[i])
    }
    return r; 
    }
    
    function modifica (a) {
        for (let i = 0 ; i < a.length/2; i++){
           let temp 
           temp = a[i]
           a[i] = a[a.length - i - 1] 
           a[a.length - i - 1] = temp
        }
        return a;
    }
    
    let a = [2, 3, 4, 5, 6]
    let b = [8, 9, 10, 12, 11]
    let c = [12, 13, 14, 15, 16]
    
    let funcionA = invertir (a);
    let funcionB = invertir (b);
    let funcionC = invertir (c);
    
    console.log("FUNCION 1");
    console.log(funcionA);
    console.log(funcionB);
    console.log(funcionC);
    
    let funcionD = modifica (a);
    let funcionE = modifica (b);
    let funcionF = modifica (c);
    
    console.log("FUNCION 2");
    console.log(funcionD);
    console.log(funcionE);
    console.log(funcionF);