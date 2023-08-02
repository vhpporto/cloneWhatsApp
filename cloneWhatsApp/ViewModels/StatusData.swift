import Foundation

class StatusData: ObservableObject {
    @Published var statuses: [WhatsAppStatus] = []
    
    init() {
        loadStatusData()
    }
    
    func loadStatusData() {
        if let url = Bundle.main.url(forResource: "status", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                statuses = try decoder.decode([WhatsAppStatus].self, from: data)
            } catch {
                print("Error decoding status data: \(error)")
            }
        }
    }
}
