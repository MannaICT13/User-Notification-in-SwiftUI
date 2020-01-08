//
//  ContentView.swift
//  User Notification in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 9/1/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
    
        
        
        ZStack{
 
            Color.purple.edgesIgnoringSafeArea(.all)
        
        VStack{
            
            Button(action: {
                
                
                //look at AppDelegate.Swift for permission presentaion code written there
                
               
                let content = UNMutableNotificationContent()
                content.title = "User Notification Title"
                content.subtitle = "Notification Subtitle"
                content.body = "Notification body is Here.Notification body is Here.Notification body is Here.Notification body is Here.Notification body is Here.Notification body is Here."
                content.badge = 1
                
                let timeTrigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: timeTrigger)
                
                UNUserNotificationCenter.current().add(request) { (error) in
                    
                    if error == nil{
                        print("Successfully Send a notification")
                    }
                }
                
                
                
            }, label: {
                Text("Send Notification")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                  
                
            })
            
            
        
        }
        
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
