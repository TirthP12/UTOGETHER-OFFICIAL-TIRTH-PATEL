//
//  BeforeB.swift
//  UTOGETHER
//
//  Created by Tirth D. Patel on 9/14/23.
//
import SwiftUI

struct BeforeB: View {
    @State private var selectedDate = Date()
    @State private var showAlert = false
    
    var body: some View {
        ScrollView {
            VStack {
                
                Spacer()
                
                
                Text("Available Tutors for Before School B Day")
                    .font(.system(size: 20, weight: .bold))
                    .padding()
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .foregroundColor(Color.gray)
                HStack {
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.navy)
                        .frame(width: 370, height: 200)
                        .overlay(
                            VStack(alignment: .center) {
                                Text("Mina Bandic")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                Text("Algebra I/II / French / APWH ")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                        .padding(.top, 10)
                                        .foregroundColor(.white)
                                    HStack {
                                        Button(action: {
                                            let email = "mbandic6023@stu.d214.org"
                                            let subject = "Tutoring Request - Before School on B Day \(formattedDate(from: selectedDate))?"
                                            let body = "Hello, can you help me on \(formattedDate(from: selectedDate))? Thank you!"
                                            
                                            let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let urlString = "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)"
                                            if let url = URL(string: urlString) {
                                                UIApplication.shared.open(url)
                                                if UIApplication.shared.canOpenURL(url) {
                                                    UIApplication.shared.open(url)
                                                    showAlert = true
                                                }
                                            }
                                        }) {
                                            Text("Request")
                                                .foregroundColor(.black)
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 10)
                                                .background(Color.white)
                                                .cornerRadius(5)
                                        }
                                    }
                                }
                                .padding()
                            }
                        )
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray)
                        .frame(width: 370, height: 200)
                        .overlay(
                            VStack(alignment: .center) {
                                Text("Michael Anzalotti")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                Text("Algebra I/II / Geometry")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                        .padding(.top, 10)
                                        .foregroundColor(.white)
                                    HStack {
                                        Button(action: {
                                            let email = "manzalotti5013@stu.d214.org"
                                            let subject = "Tutoring Request - Before School on B Day \(formattedDate(from: selectedDate))?"
                                            let body = "Hello, can you help me on \(formattedDate(from: selectedDate))? Thank you!"
                                            
                                            let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let urlString = "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)"
                                            if let url = URL(string: urlString) {
                                                UIApplication.shared.open(url)
                                            }
                                        }) {
                                            Text("Request")
                                                .foregroundColor(.black)
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 10)
                                                .background(Color.white)
                                                .cornerRadius(5)
                                        }
                                    }
                                }
                                .padding()
                            }
                        )
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.lightBlue)
                        .frame(width: 370, height: 200)
                        .overlay(
                            VStack(alignment: .center) {
                                Text("Belinda Zhang")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                Text("All Math / English / APUSH / French")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                        .padding(.top, 10)
                                        .foregroundColor(.white)
                                    
                                    HStack {
                                        Button(action: {
                                            let email = "bzhang4561@stu.d214.org"
                                            let subject = "Tutoring Request - Before School on B Day \(formattedDate(from: selectedDate))?"
                                            let body = "Hello, can you help me on \(formattedDate(from: selectedDate))? Thank you!"
                                            
                                            let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let urlString = "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)"
                                            if let url = URL(string: urlString) {
                                                UIApplication.shared.open(url)
                                            }
                                        }) {
                                            Text("Request")
                                                .foregroundColor(.black)
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 10)
                                                .background(Color.white)
                                                .cornerRadius(5)
                                        }
                                    }
                                }
                                .padding()
                            }
                        )
                    
                    Spacer()
                }
                
                Spacer()
                HStack {
                    Spacer()
                    
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray)
                        .frame(width: 370, height: 200)
                        .overlay(
                            VStack(alignment: .center) {
                                Text("Kiko Yang ")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                Text("English / Algebra II")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                        .padding(.top, 10)
                                        .foregroundColor(.white)
                                    HStack {
                                        Button(action: {
                                            let email = "kyang6494@stu.d214.org"
                                            let subject = "Tutoring Request - Before School on B Day \(formattedDate(from: selectedDate))?"
                                            let body = "Hello, can you help me on \(formattedDate(from: selectedDate))? Thank you!"
                                            
                                            let encodedSubject = subject.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let encodedBody = body.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                                            let urlString = "mailto:\(email)?subject=\(encodedSubject)&body=\(encodedBody)"
                                            if let url = URL(string: urlString) {
                                                UIApplication.shared.open(url)
                                            }
                                        }) {
                                            Text("Request")
                                                .foregroundColor(.black)
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 10)
                                                .background(Color.white)
                                                .cornerRadius(5)
                                        }
                                    }
                                }
                                .padding()
                            }
                        )
                    
                    Spacer()
                }
            }
        }
    }
    private func formattedDate(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

