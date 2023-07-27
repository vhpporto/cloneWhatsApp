import Foundation

class CallData: ObservableObject {
    @Published var calls: [Call] = []
    
    init() {
        loadCalls()
    }
    
    func loadCalls() {
        if let url = Bundle.main.url(forResource: "calls", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                calls = try decoder.decode([Call].self, from: data)
            } catch {
                print("Error decoding calls data: \(error)")
            }
        }
    }
}
