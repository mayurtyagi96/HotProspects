//
//  ContentView.swift
//  HotProspects
//
//  Created by Mayur  on 17/09/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView{
            Text("Tab 1")
                .tabItem {
                    Label("item 1", systemImage: "star")
                }
            Text("Tab 2")
                .tabItem {
                    Label("item 2", systemImage: "star")
                }
        }
    }
}

#Preview {
    ContentView()
}
