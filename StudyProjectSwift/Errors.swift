//
//  Errors.swift
//  StudyProjectSwift
//
//  Created by Lư Tấn Đạt on 11/1/26.
//

import Foundation

enum APIConfigError: Error, LocalizedError {
    case fileNotFound
    case dataLoadingFailed(underlyingError: Error)
    case decodingFailed(underlyingError: Error)

    var errorDescription: String? {
        switch self {
        case .fileNotFound:
            return "API Config file not found"
        case .dataLoadingFailed(underlyingError: let error):
            return
                "Failed to load data from API Configuartion file: \(error.localizedDescription)."
        case .decodingFailed(underlyingError: let error):
            return
                "Failed to decode API Configuration: \(error.localizedDescription)."
        }
    }
}

enum NetWorkError: Error, LocalizedError {
    case badURLResponse(underlyingError: Error)
    case missingConfig
    case urlBuidFailed

    var errorDescription: String? {
        switch self {
        case .badURLResponse(underlyingError: let error):
            return "Bad URL Response: \(error.localizedDescription)."
        case .missingConfig:
            return "Missing API Configuration."
        case .urlBuidFailed:
            return "Failed to build URL."
        }
    }
}
