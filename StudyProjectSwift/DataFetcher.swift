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

    let fetchTitlesURL = URL(string: baseURL)?
        .appending(path: "3/trending\(media)/day")
        .appending(queryItems: [
            URLQueryItem(name: "api_key", value: apiKey)
        ])
}
