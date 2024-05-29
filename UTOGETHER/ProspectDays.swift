import SwiftUI

struct ProspectDays: View {
    @State private var selectedDate = Date()
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.lightBlue
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    VStack {
                        Text("EVERY KNIGHT EVERY DAY")
                            .font(.custom("Georgia", size: 32))
                            .fontWeight(.bold)
                            .padding()
                            .cornerRadius(10)
                            .foregroundColor(Color.black)
                        
                        NavigationLink(destination: nAvyDay()) {
                            Text("nAvy Day")
                                .padding()
                                .background(Color.navy)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        NavigationLink(destination: columBiaDay()) {
                            Text("columBia Day")
                                .padding()
                                .background(Color.navy)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .background(Color.lightBlue)
                    .cornerRadius(10)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .navigationBarTitle("", displayMode: .inline)
                .navigationBarHidden(true)
            }
            .navigationBarItems(leading: backButton) // Adding the custom back button
        }
    }
    
    // Custom back button
    private var backButton: some View {
        Button(action: {
            // Handle back action here
        }) {
            HStack {
                Image(systemName: "chevron.left")
                Text("Back")
            }
            .foregroundColor(.white)
        }
    }
}
