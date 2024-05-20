import SwiftUI

struct Tutor: Identifiable {
    let id = UUID()
    var name: String
    var location: String
    var bio: String
}

struct ConnectwithOthers: View {
    @State private var searchText = ""
    
    let tutors = [
        Tutor(name: "Apple", location: "401 Michigan Ave, Chicago, IL 60611", bio: "Expert in Swift and iOS development."),
        Tutor(name: "Jane Smith", location: "456 Elm St, Mount Prospect", bio: "Specializes in Mathematics and Physics."),
        Tutor(name: "David Johnson", location: "789 Oak St, Mount Prospect", bio: "Experienced in Chemistry and Biology."),
        Tutor(name: "Tirth Patel", location: "789 Oak St, Mount Prospect", bio: "Experienced in Precalculus."),
        Tutor(name: "Hari Patel", location: "811 Kensington Rd, Mount Prospect", bio: "Algebra I tutor!."),
    ]
    
    
    var filteredTutors: [Tutor] {
        if searchText.isEmpty {
            return tutors
        } else {
            return tutors.filter { $0.name.contains(searchText) || $0.location.contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("ConnectU")
                    .font(.system(size: 34, weight: .bold, design: .default))
                    .foregroundColor(.primary)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                
                SearchBar(text: $searchText)
                
                List(filteredTutors) { tutor in
                    NavigationLink(destination: TutorDetailView(tutor: tutor)) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text(tutor.name)
                                .font(.system(size: 24, weight: .medium, design: .default))
                                .foregroundColor(.primary)
                            Text(tutor.location)
                                .font(.system(size: 18, weight: .regular, design: .default))
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 10)
                    }
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
                        .background(Color.blue)
                        .cornerRadius(8)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
            }
        }
    }
}

struct TutorDetailView: View {
    var tutor: Tutor
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(tutor.name)
                .font(.system(size: 34, weight: .bold, design: .default))
                .foregroundColor(.primary)
            
            Text(tutor.location)
                .font(.system(size: 18, weight: .regular, design: .default))
                .foregroundColor(.secondary)
            
            Text(tutor.bio)
                .font(.system(size: 18, weight: .regular, design: .default))
                .foregroundColor(.primary)
            
            Button(action: {
                if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSczpijPuk-ezywcgL-dBe-tYrSrPFTl8IGpbo_7K3ph_I-vkg/viewform?usp=sf_link") {
                    UIApplication.shared.open(url)
                }
            }) {
                Text("Book Tutor")
                    .font(.system(size: 18, weight: .semibold, design: .default))
                    .foregroundColor(.white)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 20)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
        }
        .padding()
        .navigationTitle("Tutor Details")
    }
}

struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String
        
        init(text: Binding<String>) {
            _text = text
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = "Search tutors"
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

struct ConnectwithOthers_Previews: PreviewProvider {
    static var previews: some View {
        ConnectwithOthers()
    }
}
