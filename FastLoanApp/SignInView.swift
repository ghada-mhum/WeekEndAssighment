//
//  SignInView.swift
//  FastLoanApp
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        @State var text = ""
        NavigationStack{
            VStack{
                
                
                VStack{
                    Image("img1")
                    
                    Text("FastLoan")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                }    .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack{
                    TextField("", text: $text, prompt: Text("Email")
                        .foregroundColor(Color.white.opacity(0.5))  ).foregroundColor(.white)
                        .overlay(Rectangle().frame(height: 2).padding(.top, 35))
                        .foregroundColor(.white)
                        .padding(.horizontal,35)
                        .padding(.vertical,15)
                       
                    ZStack{
                        TextField("", text: $text, prompt: Text("Password")
                            .foregroundColor(Color.white.opacity(0.5))  )
                            
                            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
                        
                            .foregroundColor(.white)
                      
                            .padding(.horizontal,35)
                            .padding(.vertical,15)
                        
                       
                        Text("Forgot it?")
                            .font(.callout)
                            .italic()
                            .foregroundColor(.white.opacity(0.3))
                            .offset(CGSize(width: 120, height: -5))
                          
                    }
                    
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
                    
                    HStack{
                        Text("Don't have an account? ")
                            .foregroundColor(.white.opacity(0.5))
                        Text("Register")
                            .foregroundColor(.white.opacity(0.7))
                            .bold()
                            .underline()
                        
                    }
                    Spacer()
                }    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .background(LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea())
        }
    }
}
#Preview {
    SignInView()
}
