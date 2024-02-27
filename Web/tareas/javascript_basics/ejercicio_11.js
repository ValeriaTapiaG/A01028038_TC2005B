function alphabeticalOrder(words) {
    
    let n = words.length;

    
    for (let i = 0; i < n - 1; i++) {
       
        let minIndex = i;

        for (let j = i + 1; j < n; j++) {
           
            if (words[j] < words[minIndex]) {
                minIndex = j;
            }
        }

        let temp = words[i];
        words[i] = words[minIndex];
        words[minIndex] = temp;
    }

    
    return words;
}

let words = ["dinosaurio", "hola", "mundo", "alefante"];
console.log(alphabeticalOrder(words));
