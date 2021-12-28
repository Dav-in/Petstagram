//
//  APIClient.swift
//  Petstagram
//
//  Created by Davin Henrik on 12/28/21.
//

import Foundation
import Combine

//Error Handling... add errors as needed
enum APIError: Error {
    case requestFailed(Int)
    case postProcessingFailed(Error?)
}

//
struct APIClient {
    let session: URLSession
    let environment: APIEnvironment
    //assign the session with shared as the default
    init(session: URLSession = .shared, environment: APIEnvironment = .prod) {
        self.session = session
        self.environment = environment
    }
    // combine publisher, w/generics so APIRequest passed to strongly type the return publisher
    func publisherForRequest<T: APIRequest>(_ request: T) -> AnyPublisher<T.Response, Error> {
        let url = environment.baseURL.appendingPathComponent(request.path)
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = request.method.rawValue
        urlRequest.httpBody = request.body
        
        let publisher = session.dataTaskPublisher(for: urlRequest)
            .tryMap { data, response -> Data in
                guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                    let statusCode = ( response as? HTTPURLResponse)?.statusCode ?? 0
                    throw APIError.requestFailed(statusCode)
                }
                return data
        }
            .tryMap { data -> T.Response in
                try request.handle(response: data)
            }
            .tryCatch { error -> AnyPublisher<T.Response, APIError> in
                throw APIError.postProcessingFailed(error)
            }
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        
        return publisher
    }
}
