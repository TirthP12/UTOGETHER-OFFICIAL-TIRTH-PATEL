import SwiftUI

struct Tutor {
    var name: String
    var location: String
}

struct ConnectwithOthers: View {
    let tutors = [
        Tutor(name: "Apple", location: "401 Michigan Ave, Chicago, IL 60611"),
        Tutor(name: "Jane Smith", location: "456 Elm St, Mount Prospect"),
        Tutor(name: "David Johnson", location: "789 Oak St, Mount Prospect")
    ]
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("ConnectU")
                    .font(.system(size: 28, weight: .bold, design: .default))
                    .foregroundColor(.black) // Set text color to black
                    .padding(.top, 20)
                    .padding(.leading)
                
                List(tutors, id: \.name) { tutor in
                    VStack(alignment: .leading, spacing: 5) {
                        Text(tutor.name)
                            .font(.system(size: 20, weight: .regular, design: .default))
                            .foregroundColor(.black) // Set text color to black
                        Text(tutor.location)
                            .font(.system(size: 16, weight: .regular, design: .default))
                            .foregroundColor(.black) // Set text color to black
                        Button(action: {
                            if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSczpijPuk-ezywcgL-dBe-tYrSrPFTl8IGpbo_7K3ph_I-vkg/viewform?usp=sf_link") {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Book Tutor")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.lightBlue)
                                .cornerRadius(5)
                        }
                        .buttonStyle(DefaultButtonStyle())
                    }
                }
                .padding()
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                
            }) {
               
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
