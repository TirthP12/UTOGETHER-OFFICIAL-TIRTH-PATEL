import SwiftUI
import UIKit // Added to import UIApplication

struct Tutor: Identifiable {
    let id = UUID()
    var name: String
    var location: String
    var bio: String
    var imageName: String
}

struct ConnectwithOthers: View {
    @State private var searchText = ""
    @State private var isDarkMode = false
    
    let tutors = [
        Tutor(name: "Albert Kim", location: "403 Kensington Rd, Mount Prospect, Illinois, 60056", bio: "AP CALC BC Tutor & Digital SAT!", imageName: "albert"),
        Tutor(name: "Tirth Patel", location: "10 Dempster St, Des Plaines, Illinois 60016", bio: "Experienced in Precalculus.", imageName: "tirth"),
        Tutor(name: "Apple", location: "401 Michigan Ave, Chicago, IL 60611", bio: "Expert in Swift and iOS development.", imageName: "profiles"),
        Tutor(name: "Hari Patel", location: "811 Kensington Rd, Mount Prospect, Illinois 60056", bio: "Algebra I tutor!", imageName: "profiles"),
        
    ]
    
    var filteredTutors: [Tutor] {
        var filtered = tutors
        if !searchText.isEmpty {
            filtered = filtered.filter { $0.name.localizedCaseInsensitiveContains(searchText) || $0.location.localizedCaseInsensitiveContains(searchText) }
        }
        return filtered
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("ConnectU")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(isDarkMode ? .white : .blue)
                    .padding(.top, 20)
                    .padding(.leading, 20)
                
                
                TextField("Search", text: $searchText)
                    .padding(.horizontal, 20)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                List(filteredTutors) { tutor in
                    NavigationLink(destination: TutorDetailView(tutor: tutor)) {
                        TutorRowView(tutor: tutor)
                    }
                }
                .listStyle(GroupedListStyle())
                
                Spacer()
                
                Button(action: {
                    if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSc6-jL09tH7aB8bFUojotT53wxq1Fcwd0WwtHGdtlfQzKM9jw/viewform?usp=sf_link") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Register as a Tutor")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            }
            .background(isDarkMode ? Color.black : Color.white)
            .navigationBarItems(trailing:
                Button(action: {
                    isDarkMode.toggle()
                }) {
                    Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
                        .foregroundColor(isDarkMode ? .white : .blue)
                        .font(.headline)
                        .padding()
                }
            )
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct TutorDetailView: View {
    var tutor: Tutor
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Image(tutor.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(tutor.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Text(tutor.location)
                    .font(.body)
                    .foregroundColor(.secondary)
                Text(tutor.bio)
                    .font(.body)
                    .foregroundColor(.primary)
                Button(action: {
                    if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSczpijPuk-ezywcgL-dBe-tYrSrPFTl8IGpbo_7K3ph_I-vkg/viewform?usp=sf_link") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Book")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 10)
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarTitle(tutor.name)
    }
}

struct TutorRowView: View {
    var tutor: Tutor
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(tutor.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
                
                VStack(alignment: .leading) {
                    Text(tutor.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.primary)
                    Text(tutor.location)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
            }
            Text(tutor.bio)
                .font(.body)
                .foregroundColor(.primary)
            Button(action: {
                if let url = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSczpijPuk-ezywcgL-dBe-tYrSrPFTl8IGpbo_7K3ph_I-vkg/viewform?usp=sf_link") {
                    UIApplication.shared.open(url)
                }
            }) {
                Text("Book")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top, 10)
        }
    }
}
