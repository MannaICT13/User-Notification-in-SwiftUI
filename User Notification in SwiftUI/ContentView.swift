//
//  ContentView.swift
//  User Notification in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 9/1/20.
//  Copyright © 2020 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    
    @State var showingAlert : Bool = false
   
    
    
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
                
                //For UNCalanderNotificationTrigger
                
             /*   let date = DateComponents()
                date.hour = 10
                date.minute = 30
                
                let calenderTrigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: false)
                */
                
              //For UNLocationNotificationTrigger
             
                /*
                let center = CLLocationCoordinate2D(latitude: 20.45, longitude: 23.34)
                let region = CLCircularRegion(center: center, radius: 800, identifier: UUID().uuidString)
                region.notifyOnEntry = true
                region.notifyOnExit = true
                
                
                
                let locationTrigger = UNLocationNotificationTrigger(region: region, repeats: false)
                
               */
                
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: timeTrigger)
                
                UNUserNotificationCenter.current().add(request) { (error) in
                    
                    if error == nil{
                        
                        self.showingAlert.toggle()
                    }
                }
                
                
                
            }, label: {
                Text("Send Notification")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                  
                
            })
            
            
        
        }
        
        }.alert(isPresented: $showingAlert) { () -> Alert in
            
            Alert(title: Text("Notification Alert!"), message: Text("Successfully send a notification"), dismissButton: .default(Text("OK")))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
