//
//  ContentView.swift
//  HotProspects
//
//  Created by Mayur  on 17/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.red
    @State private var showAlert = false
    
    var body: some View {
        VStack{
            Menu("Label") {
                  Button("Buttons1") { }
                Button("Buttons2") { }
                Button("Buttons3") { }
                Button("Buttons4sdjhfiusdfjsdjkfdifsdklfkdskfdklsfkjsdkl") { }
            }
            .menuStyle(.button)
//            .menuIndicator(.visible)
//            .fixedSize() // Otherwise will be the width of your menu options.
            Text("Hello World")
                .padding()
                .background(backgroundColor)
            
            Button("", systemImage: "plus"){
                showAlert = true
            }
            .padding()
            .contextMenu {
                Button("Red"){
                    backgroundColor = .red
                }
                
                Button("Pink"){
                    backgroundColor = .pink
                }
                
                Button("Green"){
                    backgroundColor = .green
                }
            }
        }
        .alert("Alert", isPresented: $showAlert, actions: {})
    }
}

#Preview {
    ContentView()
}


