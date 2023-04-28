//
//  ContentView.swift
//  FirstLoginSimple
//
//  Created by David Bueno Castro on 21/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {

        ZStack {
            Circle()
                .fill(.purple)
                .frame(width: 150, height: 150, alignment: .topTrailing)
                .shadow(color: .purple.opacity(1),radius: 20)
                .offset(x: 185 ,y: -300)
            
            Circle()
                .fill(.purple)
                .frame(width: 40, height: 40, alignment: .topTrailing)
                .shadow(color: .purple.opacity(0.8), radius: 20)
                .offset(x: 40, y: -300)
            
            Circle()
                .fill(.purple)
                .frame(width: 150, height: 150,alignment: .bottomLeading)
                .shadow(color: .purple.opacity(1), radius: 20)
                .offset(x: -200, y: 250)
            
            Circle()
                .fill(.purple)
                .frame(width: 40, height: 40, alignment: .topTrailing)
                .shadow(color: .purple.opacity(0.8), radius: 20)
                .offset(x: -60, y: 250)
            
            VStack {
                HStack{
                    Label("", systemImage: "person")
                        .foregroundColor(.purple)
                    TextField("Username", text: $username)
                        .frame(width: 200, height: 20, alignment: .top)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                }
                HStack{
                    Label("", systemImage: "key")
                        .foregroundColor(.purple)
                    TextField("Password", text: $password)
                        .frame(width: 200, height: 50, alignment: .bottom)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                }
                
                HStack {
                    Button(action: {
                        print("Esto es un botón en swiftUI")
                    }, label: {
                        Text("Iniciar sesión".uppercased())
                            .background(.purple)
                            .foregroundColor(.white)
                            .frame(width: 400, height: 50)
                            .cornerRadius(20)
                            .padding()
                            .font(.title)
                            .fontWeight(.bold)
                    })
                }
                
                HStack {
                    Label("¿Email o contraseña olvidada?", systemImage: "mail")
                        .foregroundColor(.purple)
                        .padding(.bottom, 5)
                }
                
                
            }
            .background(.white)
            .frame(width: 300,height: 230)
            .cornerRadius(25)
            .border(.purple)
            .padding(.bottom, 70)
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
