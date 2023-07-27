import Foundation

class ContactData: ObservableObject {
    @Published var contacts: [Contact] = []
    
    init() {
        loadContacts()
    }
    
    func loadContacts() {
        if let url = Bundle.main.url(forResource: "contacts", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                contacts = try decoder.decode([Contact].self, from: data)
                
            } catch {
                print("Error decoding contacts data: \(error)")
            }
        }
    }
}
