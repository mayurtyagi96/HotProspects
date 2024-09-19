//
//  ContentView.swift
//  HotProspects
//
//  Created by Mayur  on 17/09/24.
//
import SamplePackage
import SwiftUI

struct ContentView: View {
    var elements = 1...60
    
    var result: String {
        let selected = elements.random(10).sorted()
        return selected.map(String.init).formatted()
    }
    var body: some View {
        Text(result)
    }
}

#Preview {
    ContentView()
}


