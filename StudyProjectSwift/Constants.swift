//
//  Constants.swift
//  StudyProjectSwift
//
//  Created by Lư Tấn Đạt on 3/1/26.
//

import Foundation
import SwiftUI

struct Constants {
    struct Text {
        static let homeString = "Home"
        static let upcomingString = "Upcoming"
        static let searchString = "Search"
        static let downloadString = "Download"
        static let playString = "Play"
    }
    
    struct Icon {
        static let homeIconString = "house"
        static let upcomingIconSring = "play.circle"
        static let searchIconString = "magnifyingglass"
        static let downloadIconString = "arrow.down.to.line"
    }
    
    struct URL {
        static let testTitleURL = "https://lh3.googleusercontent.com/d/1Gb5qAKr3sfprqumQ9QMuM4GwC97sv6qW=s0"
    }

}

extension Text {
    func ghostButton() -> some View{
        self
            .frame(width: 100, height: 50)
            .foregroundStyle(.buttonText)
            .bold()
            .background {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.buttonBorder,lineWidth: 3)
            }
    }
}
