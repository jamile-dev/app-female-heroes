import Foundation

struct Hero: Codable, Identifiable {
    let id: String
    let name: String
    let alias: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
}
