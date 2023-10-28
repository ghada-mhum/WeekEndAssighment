//
//  ContentView.swift
//  FastLoanApp
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct ContentView: View {
  
  
    var body: some View {
        TabView{
       
            HomeView()
       
                .tabItem {
                    Image(systemName: "house.fill")
                       
                    Text("Home")
                    
                }
            NewLoanView()
                .tabItem {
                    Image(systemName: "pencil.and.list.clipboard")
                    Text("New Loaan")
                    
                }
           OverView()
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Overview")
                    
                }
            
             
            
        }
        
    }
}

#Preview {
    ContentView()
}
