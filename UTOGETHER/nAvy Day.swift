import SwiftUI

struct nAvyDay: View {
    @State private var selectedDate = Date()
    @State private var showAlert = false
    
    
    var body: some View {
        ZStack {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()
                
                VStack {
                    Text("SELECT A BLOCK")
                        .font(.custom("Times New Roman", size: 32))
                        .fontWeight(.bold)
                        .padding()
                        .cornerRadius(10)
                        .foregroundColor(Color.black)
                    
                    NavigationLink(destination: BeforeA()) {
                        Text("Before School")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: One()) {
                        Text("Block 1")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    
                    NavigationLink(destination: TwoView()) {
                        Text("Block 2")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: ThreeA()) {
                        Text("Block 3A")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: ThreeB()) {
                        Text("Block 3B")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: ThreeC()) {
                        Text("Block 3C")
                            .padding()
                            .background(Color.navy)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    NavigationLink(destination: FourView()) {
                        Text("Block 4")
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
