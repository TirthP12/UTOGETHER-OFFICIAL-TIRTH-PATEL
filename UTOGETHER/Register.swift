import SwiftUI

struct Tutor: Codable {
    var name: String
    var location: String
}

struct ContentView: View {
    @State private var name: String = ""
    @State private var location: String = ""

    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Location", text: $location)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                submitTutorInfo()
            }) {
                Text("Submit")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
            .padding()
        }
        .navigationBarTitle("Tutor Registration")
    }

    private func submitTutorInfo() {
        guard let url = URL(string: "https://script.google.com/macros/s/AKfycbz-GeZzc6wG1GE6scQm8o5c0-S6f84wep-RsDyuLEYt5suAEJ8BL-IzPhOPIUvB628y/exec") else { return }
        
        let tutor = Tutor(name: name, location: location)
        guard let jsonData = try? JSONEncoder().encode(tutor) else { return }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = jsonData

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            if response.statusCode == 200 {
                print("Tutor info submitted successfully")
            } else {
                print("Error: \(response.statusCode)")
            }
        }.resume()
    }
}

struct Register_PreviewProviders: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
