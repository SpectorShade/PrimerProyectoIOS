import Foundation
struct Jugador: Identifiable{
    let id = UUID()
    let nombre: String
    let puntuacion: Int
}

let jugadores_falsos = [
    Jugador(nombre: "Humano1", puntuacion: 88),
    Jugador(nombre: "Humano2", puntuacion: 92),
    Jugador(nombre: "Humano3", puntuacion: 76),
    Jugador(nombre: "Humano4", puntuacion: 95),
    Jugador(nombre: "Humano5", puntuacion: 83),
    Jugador(nombre: "Humano6", puntuacion: 89),
    Jugador(nombre: "Humano7", puntuacion: 79),
    Jugador(nombre: "Humano8", puntuacion: 91),
    Jugador(nombre: "Humano9", puntuacion: 84),
    Jugador(nombre: "Humano10", puntuacion: 87),
]
