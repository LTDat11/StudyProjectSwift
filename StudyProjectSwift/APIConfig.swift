//
//  APIConfig.swift
//  StudyProjectSwift
//
//  Created by Lư Tấn Đạt on 11/1/26.
//

import Foundation

struct APIConfig: Decodable {
    let tmdbBaseURL: String
    let tmdbAPIKey: String
    
    static let shared: APIConfig = {
        guard let url = Bundle.main.url(forResource: "APIConfig", withExtension: "json") else {
            fatalError("APIConfig.json is misssing or invalid")
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(APIConfig.self, from: data)
        } catch {
            fatalError("Failed to load or decode APIConfig.json: \(error)")
        }
    }(
        
    )
}
