//
//  WelcomeView.swift
//  FastLoanApp
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                
                
                VStack{
                    Image("img1")
                    
                    Text("FastLoan")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack{
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            
                                Text("Sign In")
                                    .fontWeight(.bold)
                                    .frame(width: 250,height: 20)
                                    .font(.title3)
                                    .foregroundColor(.top)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(30)
                                    .padding(20)
                            
                        })
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            Text("or **Creat an account**")
                                .foregroundColor(.white)
                        })
                    
                    Spacer()
                    
                    
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                
            }
            .background(LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea())
        }
        
    }
}

#Preview {
    WelcomeView()
}
