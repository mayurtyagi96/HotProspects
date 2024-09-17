//
//  ContentView.swift
//  HotProspects
//
//  Created by Mayur  on 17/09/24.
//

import SwiftUI

struct ContentView: View {
//    @State private var users = ["Mayur", "Manu", "Hashit"]
    @State private var users = [1, 3, 4]
    @State private var selectedItem = Set<Int>()
    
    var body: some View {
        List(users, id: \.self, selection: $selectedItem){ user in
            Text("\(user)")
        }
        
        EditButton()
        
        Text("\(selectedItem)")
    }
}

#Preview {
    ContentView()
}
