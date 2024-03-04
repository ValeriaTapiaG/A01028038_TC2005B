//archivo principal que va a correr mi servidor 

"use strict";

import express from 'express';

const app= express() //crear un servidor de express 

//direccion ip = identifca de manera unica un servidor
// puerto=ruta logica en su computadora donde existe el serviccio  
//logico= espacio de memoria 

const port =3000

//arrow function es una funcion anonima- solo existen en ese punto}



app.get('/api/hello',(req,respt)=>{
    respt.status(200).send('hello from server')})

app.get('/api/hello/:name',(req,respt)=>{
        
    respt.status(200).send(`hello ${req.params.name}`)


})

app.listen(port, () =>{
    console.log(`listeing on port ${port}`)
})



