import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        VStack {
            VStack {
                NavigationView {
                    ZStack {
                        Color.lightBlue
                            .ignoresSafeArea()
                        Circle()
                            .scale(0.90)
                            .foregroundColor(.white)
                        VStack {
                            Image("Phs")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 100)
                                .offset(x: -22, y: 0)
                            
                            Text("UTogether")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            
                            NavigationLink(destination: ProspectDays()) {
                                Text("Login")
                                    .padding()
                                    .background(Color.lightBlue)
                                    .foregroundColor(.white)
                                    .cornerRadius(20)
                                    .frame(width: 500)
                                Spacer()
                                
                            }
                            .padding()
                            
                        }
                    }
                }
                .multilineTextAlignment(.center)
                .foregroundColor(Color.navy)
                
                Spacer()
                      }
        }
        Text("Powered by Tirth Patel")
        
                            .font(.system(size: 10)) // Adjust the font size here
                            .foregroundColor(Color.lightBlue)
                    }
                   
                
    
    
}

extension Color {
    static let lightBlue = Color(red: 103/255, green: 216/255, blue: 255/255)
}

extension Color {
    static let navy = Color(red: 0/255, green: 0/255, blue: 180/255)
}

