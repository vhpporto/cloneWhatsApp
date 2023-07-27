import Foundation

struct Call: Codable, Identifiable {
    var id: String
    var avatar: URL?
    var title: String
    var description: String
    var day: String
}
