//
//  NewLoanView.swift
//  FastLoanApp
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct NewLoanView: View {
    @State var width1:CGFloat = 200
    @State var width2:CGFloat = 100
    var totalWidth = UIScreen.main.bounds.width - 50
    
    var body: some View {
        
        NavigationStack{
            VStack{
                HStack{
                    Image(systemName: "person.fill")
                        .padding()
                        .foregroundColor(.white)
                    Spacer()
                    Text("New Loan")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "bell.fill")
                        .padding()
                        .foregroundColor(.white)
                }
                
                HStack{
                    Text("Fill in the following options")
                        .padding()
                        .foregroundColor(.white)
                        .bold()
                    Spacer()
                }
                VStack{
                    HStack{
                        Text("Loan amount")
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            .font(.callout)
                        Spacer()
                        Text("$8 500")
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            .font(.callout)
                    }
                    ZStack(alignment: .leading ){
                        
                      
                        Rectangle()
                            .fill(Color.white.opacity(0.3))
                        
                            .frame(width:totalWidth, height: 4)
                        
                
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(10)
                            .frame(width: self.width1,height: 6)
                        Circle()
                            .fill(Color.white)
                            .frame(width: 30,height: 27)
                            .offset(x:self.width1-6)
                        Circle()
                            .fill(Color.green)
                            .frame(width: 18,height: 18)
                            .offset(x:self.width1)
                        
                        
                    }.padding(.top,5)
                    HStack{
                        Text("$500")
                            .padding(.horizontal)
                            .foregroundColor(.white.opacity(0.4))
                            .font(.callout)
                        Spacer()
                        Text("$10 000")
                            .padding(.horizontal)
                            .foregroundColor(.white.opacity(0.4))
                            .font(.callout)
                    }
                }.padding(.bottom)
                VStack{
                    HStack{
                        Text("Loan term")
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            .font(.callout)
                        Spacer()
                        Text("12 days")
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            .font(.callout)
                    }
                    ZStack(alignment: .leading ){
                        
                      
                        Rectangle()
                            .fill(Color.white.opacity(0.3))
                        
                            .frame(width:totalWidth, height: 4)
                        
                
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(10)
                            .frame(width: self.width2,height: 6)
                        Circle()
                            .fill(Color.white)
                            .frame(width: 30,height: 27)
                            .offset(x:self.width2-6)
                        Circle()
                            .fill(Color.green)
                            .frame(width: 18,height: 18)
                            .offset(x:self.width2)
                        
                        
                    }.padding(.top,5)
                    HStack{
                        Text("5 days")
                            .padding(.horizontal)
                            .foregroundColor(.white.opacity(0.4))
                            .font(.callout)
                        Spacer()
                        Text("30 days")
                            .padding(.horizontal)
                            .foregroundColor(.white.opacity(0.4))
                            .font(.callout)
                    }
                }
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea())
            VStack{
                HStack{
                    Text("Loan amount")
                        .font(.title3)
                    Spacer()
                    Text("$6 000")
                        .font(.title3)
                        .foregroundColor(.top.opacity(0.8))
                }
                .frame(width: 330,height: 20)
                .font(.title3)
                .padding()
                .background(Color.white)
                .cornerRadius(30)
                .shadow(color: .gray.opacity(0.3),radius: 10)
                .padding(0)
                HStack{
                    Text("Next payment")
                        .font(.title3)
                    Spacer()
                    Text("01,10,2019")
                        .font(.title3)
                        .foregroundColor(.top.opacity(0.8))
                }
                .frame(width: 330,height: 20)
                .font(.title3)
                .padding()
                .background(Color.white)
                .cornerRadius(30)
                .shadow(color: .gray.opacity(0.3),radius: 10)
                .padding(0)
                HStack{
                    Text("Your Debt")
                        .font(.title3)
                    Spacer()
                    Text("$500")
                        .font(.title3)
                        .foregroundColor(.top.opacity(0.8))
                }
                .frame(width: 330,height: 20)
                .font(.title3)
                .padding()
                .background(Color.white)
                .cornerRadius(30)
                .shadow(color: .gray.opacity(0.3),radius: 10)
                .padding(0)
                
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        
                        Text("Get money")
                            .fontWeight(.bold)
                            .frame(width: 250,height: 20)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                                .ignoresSafeArea())
                            .cornerRadius(30)
                            .padding(20)
                        
                    })
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.vertical)
        }
    }
    
}


#Preview {
    NewLoanView()
}
