//
//  DataFetcher.swift
//  StudyProjectSwift
//
//  Created by Lư Tấn Đạt on 14/1/26.
//

import Foundation

let tmdbBaseURL = APIConfig.shared?.tmdbBaseURL
let tmdbAPIKey = APIConfig.shared?.tmdbAPIKey

func fetchTitles(for media: String) async throws -> [Title] {
    guard let baseURL = tmdbBaseURL else {
        throw NetWorkError.missingConfig
    }
    guard let apiKey = tmdbAPIKey else {
        throw NetWorkError.missingConfig
    }

    guard
        let fetchTitlesURL = URL(string: baseURL)?
            .appending(path: "3/trending/\(media)/day")
            .appending(queryItems: [
                URLQueryItem(name: "api_key", value: apiKey)
            ])
    else {
        throw NetWorkError.urlBuidFailed
    }

    print(fetchTitlesURL)

    let (data, urlResponse) = try await URLSession.shared.data(
        from: fetchTitlesURL
    )

    guard let response = urlResponse as? HTTPURLResponse,
        response.statusCode == 200
    else {
        throw
            NetWorkError
            .badURLResponse(
                underlyingError: NSError(
                    domain: "DataFetcher",
                    code: (urlResponse as? HTTPURLResponse)?.statusCode ?? -1,
                    userInfo: [NSLocalizedDescriptionKey: "Invalid HTTP status response"]
                )
            )
    }
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = .convertFromSnakeCase
    return try decoder.decode(APIObject.self, from: data).result
}
