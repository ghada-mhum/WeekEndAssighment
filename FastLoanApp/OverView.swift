//
//  OverView.swift
//  FastLoanApp
//
//  Created by ghada Mohammad on 13/04/1445 AH.
//

import SwiftUI
import Charts
struct OverView: View {
    @State var preselectedIndex = 0
    
    

    var body: some View {
     
        NavigationStack{
            VStack{
                HStack{
                    Image(systemName: "person.fill")
                        .padding()
                        .foregroundColor(.white)
                    Spacer()
                    Text("Account overview")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "bell.fill")
                        .padding()
                        .foregroundColor(.white)
                }
                CustomSegmentedControl(preselectedIndex: $preselectedIndex, options: ["All time", "Month", "Week"])
                    .foregroundColor(.white.opacity(0.5))
                    .padding(.horizontal)
            
         
                
                //                ZStack{
                //                    Text("Week")
                //                        .fontWeight(.bold)
                //                        .frame(width: 100,height: 20)
                //                        .font(.body)
                //                        .foregroundColor(.white)
                //                        .padding()
                //                        .background(.white.opacity(0.2))
                //                        .cornerRadius(30)
                //                        .padding(20)
                //                        .offset(x: 100)
                //                    Text("All time")
                //                        .fontWeight(.bold)
                //                        .frame(width: 100,height: 20)
                //                        .font(.body)
                //                        .foregroundColor(.white)
                //                        .padding()
                //                        .background(.white.opacity(0.2))
                //                        .cornerRadius(30)
                //                        .padding(20)
                //                        .offset(x: -100)
                //                    Text("Month")
                //                        .fontWeight(.bold)
                //                        .frame(width: 100,height: 20)
                //                        .font(.body)
                //                        .foregroundColor(.white)
                //                        .padding()
                //                        .background(.white.opacity(0.5))
                //                        .cornerRadius(30)
                //                        .padding(20)
                //                }
                //
                
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(LinearGradient(gradient: Gradient(colors: [.top, .bottom]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea())
            ScrollView{
                VStack{
                    HStack{
                        Text("History")
                            .font(.title2)
                            .padding(.horizontal)
                            .bold()
                            .foregroundColor(.top)
                        Spacer()
                    }
                    HStack{
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .padding(9)
                            .background(.green.opacity(0.2))
                            .foregroundColor(.green)
                            .cornerRadius(50)
                            .padding(.horizontal)
                        VStack(alignment: .leading){
                            Text("Payment")
                                .bold()
                            Text("12.25.2018")
                                .font(.caption)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer()
                        Text("+$1 000")
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }
                    Divider()
                    HStack{
                        Image(systemName: "minus")
                            .resizable()
                            .frame(width: 15,height: 3)
                            .padding(.vertical,15)
                            .padding(.horizontal,9)
                            .background(.red.opacity(0.2))
                            .foregroundColor(.red)
                            .cornerRadius(50)
                            .padding(.horizontal)
                        VStack(alignment: .leading){
                            Text("Loan paynent")
                                .bold()
                            Text("12.23.2018")
                                .font(.caption)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer()
                        Text("-$2 000")
                            .foregroundColor(.red)
                            .padding(.horizontal)
                    }
                    Divider()
                    HStack{
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .padding(9)
                            .background(.green.opacity(0.2))
                            .foregroundColor(.green)
                            .cornerRadius(50)
                            .padding(.horizontal)
                        VStack(alignment: .leading){
                            Text("Payment")
                                .bold()
                            Text("12.22.2018")
                                .font(.caption)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer()
                        Text("+$2 000")
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }
                    Divider()
                    HStack{
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .padding(9)
                            .background(.green.opacity(0.2))
                            .foregroundColor(.green)
                            .cornerRadius(50)
                            .padding(.horizontal)
                        VStack(alignment: .leading){
                            Text("Payment")
                                .bold()
                            Text("12.20.2018")
                                .font(.caption)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer()
                        Text("+$3 000")
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }
                    Divider()
                    HStack{
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .padding(9)
                            .background(.green.opacity(0.2))
                            .foregroundColor(.green)
                            .cornerRadius(50)
                            .padding(.horizontal)
                        VStack(alignment: .leading){
                            Text("Payment")
                                .bold()
                            Text("12.20.2018")
                                .font(.caption)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer()
                        Text("+$4 000")
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }
                    Divider()
                    HStack{
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 15,height: 15)
                            .padding(9)
                            .background(.green.opacity(0.2))
                            .foregroundColor(.green)
                            .cornerRadius(50)
                            .padding(.horizontal)
                        VStack(alignment: .leading){
                            Text("Payment")
                                .bold()
                            Text("12.19.2018")
                                .font(.caption)
                                .foregroundColor(.gray.opacity(0.8))
                        }
                        Spacer()
                        Text("+$1 000")
                            .foregroundColor(.green)
                            .padding(.horizontal)
                    }
                    Divider()
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.vertical)
            }
        }
    }
}
struct CustomSegmentedControl: View {
    @Binding var preselectedIndex: Int
    var options: [String]
    let color = Color.white
    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id:\.self) { index in
                ZStack {
                    Rectangle()
                        .fill(color.opacity(0.2))
                    Rectangle()
                        .fill(color.opacity(0.4))
                        .cornerRadius(20)
                        .padding(2)
                        .opacity(preselectedIndex == index ? 1 : 0.01)
                        .onTapGesture {
                                withAnimation(.interactiveSpring()) {
                                    preselectedIndex = index
                                }
                            }
                }
                .overlay(
                    Text(options[index])
                )
            }
        }
        .frame(height: 40)
        .cornerRadius(20)
    }
}

#Preview {
    OverView()
}
