import Foundation
import Helpers

public class NetworkManager {
    public enum HttpMethods {
        case get
        case post
        case put
        case delete
        
        var stringRepresentation: String {
            switch self {
            case .get:
                return "GET"
            case .post:
                return "POST"
            case .put:
                return "PUT"
            case .delete:
                return "DELETE"
            }
        }
    }
    
    public static let shared = NetworkManager()
    private let timeOut = 30.0
    private func getRequest(method: HttpMethods, url: URL) -> URLRequest {
        var request = URLRequest(url: url
                                 ,timeoutInterval: timeOut)
        request.httpMethod = method.stringRepresentation
        return request
    }

    public func performGetRequest<T: Codable>(method: HttpMethods,
                                       for url: URL?,
                                       completion: @escaping (T?, URLResponse?, Error?) -> Void) {
        guard let url = url else {
            completion(nil, nil, nil)
            return
        }

        let request = getRequest(method: method, url: url)
        URLSession.shared.performCodableRequestTask(with: request,
                                                    completion: completion)
    }
}
