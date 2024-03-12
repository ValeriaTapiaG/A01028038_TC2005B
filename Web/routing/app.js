"use strict";

import express from 'express';

const app= express() //crear un servidor de express 

//direccion ip = identifca de manera unica un servidor
// puerto=ruta logica en su computadora donde existe el serviccio  
//logico= espacio de memoria 

//end point es una de las rutas de mi api 

const port =3000

//arrow function es una funcion anonima- solo existen en ese punto}

app.use(express.json())


app.get('/api/hello',(req,respt)=>{
    respt.status(200).send('hello from server')})

app.get('/api/hello/:name',(req,respt)=>{
        
    respt.status(200).send(`hello ${req.params.name}\n`)


})

app.get('/api/hello/:name/:surname',(req,respt)=>{
        console.log(req.params)
    respt.status(200).send(`hello ${req.params.name} ${req.params.surname}`)


})

app.post('/api/hello',(req,respt)=>{
    console.log(req.body)
respt.status(200).send(`hello ${req.body.name} ${req.body.surname}\n`)


})


app.listen(port, () =>{
    console.log(`listeing on port ${port}`)
})

