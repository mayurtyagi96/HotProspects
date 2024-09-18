//
//  ContentView.swift
//  HotProspects
//
//  Created by Mayur  on 17/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 2
    var body: some View {
        NavigationStack{
            TabView(selection: $selectedTab){
                VStack{
                    NavigationLink("next screen") {
                        nextView()
                    }
                    Text("Tab 1")
                    
                }
                .tabItem {
                    Label("item 1", systemImage: "star")
                }
                .tag(1)
                
                VStack{
                    Text("Tab 2")
                    Button("to 1") {
                        selectedTab = 1
                    }
                }
                .tabItem {
                    Label("item 2", systemImage: "star")
                }
                .tag(2)
            }
        }
    }
}

#Preview {
    ContentView()
}
struct nextView: View {
    var body: some View {
        Text("hello folks")
    }
}
