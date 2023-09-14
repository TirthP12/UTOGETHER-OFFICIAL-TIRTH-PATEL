//
//  columBia Day.swift
//  UTOGETHER
//
//  Created by Tirth D. Patel on 9/14/23.
//
import SwiftUI

struct columBiaDay: View {
    @State private var selectedDate = Date()
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()
                
                VStack {
                    Text("SELECT A BLOCK")
                        .font(.custom("Georgia", size: 32))
                        .fontWeight(.bold)
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(Color.black)
                    
                    NavigationLink(destination: BeforeB()) {
                        Text("Before School")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: FiveView()) {
                        Text("Block 5")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                    NavigationLink(destination: SixView()) {
                        Text("Block 6")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: SevenA()) {
                        Text("Block 7A")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: SevenB()) {
                        Text("Block 7B")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: SevenC()) {
                        Text("Block 7C")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: EightView()) {
                        Text("Block 8")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                            .background(Color.lightBlue)
                            .edgesIgnoringSafeArea(.all)
                    }
                    .background(Color.lightBlue)
                    .edgesIgnoringSafeArea(.all)
                }
                .background(Color.lightBlue)
                .edgesIgnoringSafeArea(.all)
              
                
                
            }
            
        }
    }
}
