//
//  HTTPClient.swift
//  Interview
//
//  Created by Fandom on 28/10/2020.
//

import Foundation

public class HTTPClient: NSObject, HTTPClientProtocol {
    
    let session: URLSessionProtocol = URLSession.shared

    public func httpTask(with request: URLRequest, completion: @escaping (Result<HTTPResponse, Error>) -> Void) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                } else if let data = data, let response = response {
                    completion(.success(HTTPResponse(data, response)))
                } else {
                    completion(.failure(NetworkingError.internalError))
                }
            }
        }
        return task
    }
}

enum NetworkingError: Error {
    case internalError
}
