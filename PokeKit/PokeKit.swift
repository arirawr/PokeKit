//
//  PokeKit.swift
//  PokeKit
//
//  Created by Arielle Vaniderstine on 2018-07-10.
//  Copyright © 2018 Arielle Vaniderstine. All rights reserved.
//

import Foundation

struct APIResponse {
    let error: Error?
    let result: [String: AnyObject]?
}

public class PokeKit {
    static let shared = PokeKit()

    typealias PKQueryParam = [String: String]

    func createPokeKitRequest<T: Codable>(path: String, params: [PKQueryParam]?, finished: @escaping (T) -> Void) {

        // Configure the request
        let urlString = "https://pokeapi.co/api/v2/\(path)"
        print(urlString)

        var request = URLRequest(url: URL(string: urlString)!)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request, completionHandler: {
            (data, response, error) in

            guard error == nil else { print("Error making request: \(error.debugDescription)"); return }
            guard let data = data else { print("Data was nil"); return }

            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            guard let decodedData = try? decoder.decode(T.self, from: data) else { print("Could not decode data"); return }
            finished(decodedData)
        })

        task.resume()
    }

    // temp
    func getPokemon(id: Int, queryParams: [PKQueryParam]?, callback: @escaping ((Pokemon) -> Void)) {
        createPokeKitRequest(path: "pokemon/\(id)", params: queryParams, finished: callback)
    }
}
