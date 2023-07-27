import Foundation

struct Contact: Codable, Identifiable {
    var id: String // Add an id property
    var avatar: URL?
    var name: String
    var description: String
    var hour: String
}
