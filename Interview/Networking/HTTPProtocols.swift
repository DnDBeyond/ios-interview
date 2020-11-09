//
//  HTTPProtocols.swift
//  Interview
//
//  Created by Fandom on 28/10/2020.
//

import Foundation

public typealias DataTaskResult = (Data?, URLResponse?, Error?) -> Void
public typealias HTTPResponse = (data: Data, response: URLResponse)

public protocol HTTPClientProtocol {
    func httpTask(with request: URLRequest, completion: @escaping (Result<HTTPResponse, Error>) -> Void) -> URLSessionDataTask
}

public protocol URLSessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping DataTaskResult) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol { }
