import Foundation

struct Chat: Codable, Hashable {
    var messages: [Message]
}
struct Message: Codable, Hashable , Identifiable {
    var id: Int
    var remetente: String
    var mensagem: String
    var data: String
}
