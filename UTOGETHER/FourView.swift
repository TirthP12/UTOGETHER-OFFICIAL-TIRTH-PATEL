//
//  FourView.swift
//  UTOGETHER
//
//  Created by Tirth D. Patel on 9/14/23.
//
import SwiftUI

struct FourView: View {
    @State private var selectedDate = Date()
    @State private var showAlert = false
    
    var body: some View {
        ScrollView {
            VStack {
                
                Spacer()
                
                
                Text("Available Tutors for Block 4")
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
                                Text("Maeve Sexton")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                Text("Geometry / PreCalc")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                        .padding(.top, 10)
                                        .foregroundColor(.white)
                                    HStack {
                                        Button(action: {
                                            let email = "msexton4442@stu.d214.org"
                                            let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
                                Text("Alina Rimas")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                Text("Spanish / History")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                        .padding(.top, 10)
                                        .foregroundColor(.white)
                                    HStack {
                                        Button(action: {
                                            let email = "arimas5382@stu.d214.org"
                                            let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
                                Text("Mary Laba")
                                    .foregroundColor(.white)
                                    .font(.system(size: 20))
                                    .multilineTextAlignment(.center)
                                
                                Text("AP World History / Algebra I/II")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15))
                                    .multilineTextAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                        .padding(.top, 10)
                                        .foregroundColor(.white)
                                    
                                    HStack {
                                        Button(action: {
                                            let email = "mlaba5249@stu.d214.org"
                                            let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
            }
            HStack {
                Spacer()
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.navy)
                    .frame(width: 370, height: 200)
                    .overlay(
                        VStack(alignment: .center) {
                            Text("Ben Mitchell")
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
                                        let email = "bmitchell5299@stu.d214.org"
                                        let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
        }
        HStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.navy)
                .frame(width: 370, height: 200)
                .overlay(
                    VStack(alignment: .center) {
                        Text("Kaitlyn Skeleton")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        
                        Text("Physics / Algebra II")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .multilineTextAlignment(.center)
                        
                        VStack(alignment: .leading) {
                            DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                .padding(.top, 10)
                                .foregroundColor(.white)
                            HStack {
                                Button(action: {
                                    let email = "kskelton4456@stu.d214.org"
                                    let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
                        Text("Micheal Kaczun")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        
                        Text("Algebra I / English")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .multilineTextAlignment(.center)
                        
                        VStack(alignment: .leading) {
                            DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                .padding(.top, 10)
                                .foregroundColor(.white)
                            HStack {
                                Button(action: {
                                    let email = "mkuczun4249@stu.d214.org"
                                    let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
                        Text("Mary Laba")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.center)
                        
                        Text("AP World History / Algebra I/II")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .multilineTextAlignment(.center)
                        
                        VStack(alignment: .leading) {
                            DatePicker("Select Date", selection: $selectedDate, displayedComponents: .date)
                                .padding(.top, 10)
                                .foregroundColor(.white)
                            
                            HStack {
                                Button(action: {
                                    let email = "mlaba5249@stu.d214.org"
                                    let subject = "Tutoring Request - Block 4 \(formattedDate(from: selectedDate))?"
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
    }
    

    private func formattedDate(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}

