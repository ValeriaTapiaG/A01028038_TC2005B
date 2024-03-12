"use strict";

import express from 'express';

const app = express() //crea instancia servidor 

const port = 3001

app.use(express.json())  //para configurar - habilita el manejo de jason en servidor

let cards = []

app.get('/api/cards', (req, res) => {
    console.log("hola ")

    if (cards.length === 0) {
        res.status(500).send("no hay cartas");

    }
    res.status(200).send(cards);

});

app.get('/api/cards/:id', (req, res) => {
    console.log("hola")

    const cardfilt = cards.filter(card => card.id === parseInt(req.params.id))

    if (cardfilt.length === 0) {
        return res.status(404).json({ 'message': 'not found ' });

    }
    res.status(200).json(cardfilt[0])
});

app.delete('/api/cards/:id', (req, res) => {
    console.log("hola")

    if (!cards.some(card => card.id === parseInt(req.params.id))) {
        return res.status(404).json({ 'message': 'not found ' });

    }

    const cardfilt = cards.filter(card => card.id !== parseInt(req.params.id))
    cards = cardfilt
    res.status(200).json({ 'message': 'eliminado correctamente' })
});

app.post('/api/cards', (req, res) => {
    console.log(cards)

    const newCard = req.body;
    if (!newCard.id || !newCard.name || !newCard.surname) {
        return res.status(500).json({ 'message': 'lo hiciste mal ' });
    }

    // 
    const repetido = cards.filter(cards => cards.id === newCard.id)

    if (repetido.length > 0) {
        return res.status(500).json({ 'message': 'lo hiciste mal ' });
    }

    cards.push(newCard)
    console.log(cards)
    res.status(200).json({ 'message': 'todo bien ' })
});

app.put('/api/cards/:id', (req, res) => {

    if (!cards.some(card => card.id === parseInt(req.params.id))) {
        return res.status(404).json({ 'message': 'not found ' });

    }

    //info de carta actualizada 
    let cardnueva = req.body
    cardnueva.id = parseInt(req.params.id)
    console.log(cardnueva)

    for (let i = 0; i < cards.length; i++) {

        if (cards[i].id === cardnueva.id) {
            cards[i] = cardnueva
        }
    }

    res.status(200).json({ 'message': 'todo bien ' });
});


app.listen(port, () => {
    console.log(`listeing on port ${port}`)
})


