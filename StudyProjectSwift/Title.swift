//
//  Title.swift
//  StudyProjectSwift
//
//  Created by Lư Tấn Đạt on 11/1/26.
//

import Foundation

struct APIObject: Decodable {
    var result: [Title] = []
}

struct Title: Decodable,Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overView: String?
    var posterPath: String?
}
