import Foundation

class ChatData: ObservableObject {
    @Published var chats: [Chat] = []
    
    init() {
        loadChatsData()
    }
    
    func loadChatsData() {
        if let url = Bundle.main.url(forResource: "chat", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                chats = try decoder.decode([Chat].self, from: data)
            } catch {
                print("Error decoding status data: \(error)")
            }
        }
    }
}
