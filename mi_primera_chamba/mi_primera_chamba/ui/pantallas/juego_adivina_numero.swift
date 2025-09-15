//
//  juego_adivina_numero.swift
//  mi_primera_chamba
//
//  Created by Jadzia Gallegos on 05/09/25.
//

//
//  juego_adivina_numero.swift
//  mi_primera_chamba
//
//  Created by Jadzia Gallegos on 05/09/25.
//
 
import SwiftUI
 
enum EstadosJuego{
    case esta_jugando
    case ha_ganado
}
 
 
struct JuegoAdivinaNumero: View{
    
    @State var entrada_del_usuario: String = ""
    @State var mostrar_spoiler = false
    @State var comentario: String = ""
    @State var leyenda_advertencia = false
    
    var body: some View{
        VStack{
            Spoiler(texto: "Numero \(numero_aleatorio)")
            
            Spacer()
            
            Text("REGLAS")
                
            Text("Cantidad de intentos: \(juego.intentos)")
            
            Spacer()
            
            Botonexto(accion: {
                if juego.estado_actual != .ha_ganado{
                    juego.validar_intento(entrada_del_usuario)
                            }
                            
                        },
                      texto: $entrada_del_usuario,
                      place_holder: "Introduce un numero",
                      etiqueta: "Intentar"
                      )
            
            if(estado_del_juego == .ha_ganado){
                Spacer()
                
                Button(action: {}){
                    Text("Reiniciar juego")
                }
            }
            
            Leyenda(peligro: $leyenda_advertencia, texto: comentario)
            
            Spacer()
            
            Spacer()
            
            VStack{
                HStack{
                    Text("Nombre")
                    Text("Puntuacion")
                }
                
                ForEach(jugadores_falsos){ jugador in
                    RenglonColumna2(columna_1: jugador.nombre, columna_2: "\(jugador.puntuacion)")
                }
                
            }
            
            Spacer()
            
        }
    }
}
 
#Preview {
    JuegoAdivinaNumero().environment(ControlJuego())
}
 
