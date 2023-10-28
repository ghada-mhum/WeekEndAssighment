//
//  HomeView.swift
//  FastLoanApp
//
//  Created by ghada Mohammad on 11/04/1445 AH.
//

import SwiftUI

struct HomeView: View {
    @State var progressValue: Float = 0.0
    var body: some View {
        NavigationStack{
            GeometryReader{ geo in
                VStack{
                    
                    HStack{
                        Image(systemName: "person.fill")
                            .padding()
                            .foregroundColor(.white)
                        Spacer()
                        Text("Home")
                            .bold()
                            .font(.title3)
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "bell.fill")
                            .padding()
                            .foregroundColor(.white)
                    }
                    VStack{
                        ZStack {
                            Circle()
                                .fill(.white)
                                .frame(width: 230,height: 230)
                            
                            //                               .stroke(lineWidth: 30)
                            //                               .foregroundColor(Color.white)
                            
                            Circle()
                            
                                .trim(from: 0.25, to: CGFloat(min(0.95, 1)))
                                .stroke(style: StrokeStyle(lineWidth: 12, lineCap: .round, lineJoin: .round))
                                .padding(55)
                                .foregroundColor(.darkGreen)
                                
                                .rotationEffect(Angle(degrees: 270.0))
                            //                               .animation(.linear)
                            VStack{
                                Text("Current loan")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                                    .bold()
                                Text("balance")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                    .bold()
                                Text("$500")
                                    .foregroundColor(.top)
                                    .font(.largeTitle)
                                    .bold()
                                Text("Due on")
                                    .foregroundColor(.gray)
                                    .font(.caption)
                                    .bold()
                                Text("01.15.2019")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                                    .bold()
                            }
                            
                        }
                        
                    }
                    Spacer()
                    }
                    .frame(height: geo.size.height * (1/2))
                    .background(LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea())
                    HStack{
                        VStack{
                            Image(systemName: "dollarsign.circle.fill")
                                .foregroundColor(.bottom)
                            Text("Make a loan payment")
                                .multilineTextAlignment(.center)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }  .frame(width: 80,height: 80)
                            .font(.title3)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .shadow(color: .gray.opacity(0.3),radius: 10)
                            .padding(.leading,80)
                        VStack{
                            Image(systemName: "newspaper.fill")
                                .foregroundColor(.bottom)
                            
                            Text("Issue a new loan")
                                .multilineTextAlignment(.center)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }  .frame(width: 80,height: 80)
                            .font(.title3)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(30)
                            .shadow(color: .gray.opacity(0.3),radius: 10)
                            .padding(0)
                    } .frame(height: geo.size.height * (2/2))
                 
                    VStack{
                        HStack{
                            Text("More details about your current loan")
                                .padding(.horizontal)
                                .foregroundColor(.gray)
                            Spacer()
                        }
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
                    } .frame(height: geo.size.height * (3/2))
                }
            }
            
        }
 
    }
   



 
#Preview {
    HomeView()
}

