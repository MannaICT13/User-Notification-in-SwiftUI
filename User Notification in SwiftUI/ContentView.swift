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
