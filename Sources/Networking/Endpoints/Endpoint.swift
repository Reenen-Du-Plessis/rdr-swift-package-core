import Foundation

public struct Endpoint {
    let host: String
    let path: String
    let queryItems: [URLQueryItem]
}

public extension Endpoint {
    var url: URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = host
        components.path = path
        components.queryItems = queryItems
        return components.url
    }
}
