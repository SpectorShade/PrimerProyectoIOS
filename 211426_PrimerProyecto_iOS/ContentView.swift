//
//  ContentView.swift
//  211426_PrimerProyecto_iOS
//
//  Created by alumno on 03/09/25.
//

import SwiftUI

struct Pantalla: View {
    var body: some View {
        Spacer()
        
        HStack{
            Text("Hola mundo")
                .font(.title3)
                .foregroundStyle(Color.blue)
                .multilineTextAlignment(.center)
                .padding()
                .background(Color.red)
            Text("Hola mundo")
                .foregroundStyle(Color.blue)
                .background(Color.red)
                .padding()
            Text("Hola mundo")
            Text("Hola mundo")
            Text("Hola mundo")
        }
        
        Spacer()
        
        VStack{
            Text("Hola mundo")
            Text("Hola mundo")
            Text("Hola mundo")
            Text("Hola mundo")
            Text("Hola mundo")
        }
        
        Spacer()
        
        ZStack{
            Text("Texto")
            Text("Empalmado")
        
        }
        
        
    }
}

#Preview {
    Pantalla()
}
