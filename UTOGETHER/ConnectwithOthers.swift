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
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .foregroundColor(.primary)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                
                List(tutors, id: \.name) { tutor in
                    VStack(alignment: .leading, spacing: 10) {
                        Text(tutor.name)
                            .font(.system(size: 24, weight: .medium, design: .default))
                            .foregroundColor(.primary)
                        Text(tutor.location)
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .foregroundColor(.secondary)
                        Button(action: {
                            if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSczpijPuk-ezywcgL-dBe-tYrSrPFTl8IGpbo_7K3ph_I-vkg/viewform?usp=sf_link") {
                                UIApplication.shared.open(url)
                            }
                        }) {
                            Text("Book Tutor")
                                .font(.system(size: 18, weight: .semibold, design: .default))
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 20)
                                .background(Color.blue)
                                .cornerRadius(8)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding(.vertical, 10)
                }
                .listStyle(InsetGroupedListStyle())
                .padding(.horizontal, 10)
                
                Spacer()
                
                Button(action: {
                    if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSc6-jL09tH7aB8bFUojotT53wxq1Fcwd0WwtHGdtlfQzKM9jw/viewform?usp=sf_link") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Register as a Tutor")
                        .font(.system(size: 18, weight: .semibold, design: .default))
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 20)
                        .background(Color.green)
                        .cornerRadius(8)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                // Add navigation back action here if needed
            }) {
                Image(systemName: "arrow.left")
                    .foregroundColor(.blue)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConnectwithOthers()
            .previewDevice("iPad Pro (12.9-inch)")
    }
}
