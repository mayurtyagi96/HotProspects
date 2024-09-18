//
//  ContentView.swift
//  HotProspects
//
//  Created by Mayur  on 17/09/24.
//

import SwiftUI

struct ContentView: View {
    @State private var output = "mayur"
    var body: some View {
        Text(output)
            .task {
                await fetchReadings()
            }

    }
    
    func fetchReadings() async{
        let fetchTask = Task {
            let url = URL(string: "https://hws.dev/readings.json")!
            let (data,_) = try await URLSession.shared.data(from: url)
            let readings = try JSONDecoder().decode([Double].self, from: data)
            return "\(readings.count)"
        }
        
        let result = await fetchTask.result
        switch result{
        case .success(let str):
            output = str
        case .failure(let err):
            output = err.localizedDescription
        }
        
    }
    
    
    
////    --------
//    var s = Something {
//        <#code#>
//    }
//    
//    struct Something{
//        var name: String = "mayur"
//        var closure: () -> Void
//    }
////    ----------
}

#Preview {
    ContentView()
}


