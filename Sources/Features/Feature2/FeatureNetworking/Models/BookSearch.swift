import Foundation

// MARK: - SearchBooks
public struct BookSearchNetworkModel: Codable {
    let kind: String?
    let totalBooks: Int?
    let books: [BookInfo]?

    enum CodingKeys: String, CodingKey {
        case kind
        case totalBooks = "totalItems"
        case books = "items"
    }
}

// MARK: - Item
public struct BookInfo: Codable, Identifiable {
    let kind: Kind?
    public let id, etag: String?
    let selfLink: String?
    let volumeInfo: VolumeInfo?
    let searchInfo: SearchInfo?
}

public enum Kind: String, Codable {
    case booksVolume = "books#volume"
}

// MARK: - SearchInfo
public struct SearchInfo: Codable {
    let textSnippet: String?
}

// MARK: - VolumeInfo
public struct VolumeInfo: Codable {
    let title, subtitle: String?
    let authors: [String]?
    let publisher, publishedDate, description: String?
    let readingModes: ReadingModes?
    let pageCount: Int?
    let categories: [String]?
    let averageRating: Double?
    let ratingsCount: Int?
    let allowAnonLogging: Bool?
    let contentVersion: String?
    let previewLink: String?
    let infoLink: String?
    let canonicalVolumeLink: String?
    let language: String?
    let imageLinks: ImageLinks?
}

// MARK: - ImageLinks
public struct ImageLinks: Codable {
    let smallThumbnail, thumbnail: String?
}

// MARK: - ReadingModes
public struct ReadingModes: Codable {
    let text, image: Bool?
}
