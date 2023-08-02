import Foundation

struct WhatsAppStatus: Codable, Identifiable {
    var id: Int
    var url: URL?
    var name: String
    var time: String
}
