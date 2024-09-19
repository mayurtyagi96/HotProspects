//
//  ContentView.swift
//  HotProspects
//
//  Created by Mayur  on 17/09/24.
//
import UserNotifications
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Button("Ask for permission"){
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                if !success{
                    print("permission not granted")
                }
                if success{
                    print("All set")
                }else if let error{
                    print(error.localizedDescription)
                }
            }
        }
        .padding()
        
        Button("Create Notifiaction"){
            let context = UNMutableNotificationContent()
            context.title = "Feed the cat"
            context.subtitle = "It looks hungry"
            context.sound = .default
            
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
            
            let request = UNNotificationRequest(identifier: UUID().uuidString, content: context, trigger: trigger)
            
            UNUserNotificationCenter.current().add(request)
        }
    }
}

#Preview {
    ContentView()
}


