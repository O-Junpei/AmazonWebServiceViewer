import Foundation

struct Bucket: Codable, Identifiable {
    let id = UUID()

    let Name: String
    let CreationDate: String
}
