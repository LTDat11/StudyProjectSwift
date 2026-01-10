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
        static let trendingMovieString = "Trending Movies"
        static let trendingTVString = "Trending TV"
        static let topRatedMvoieString = "Top Rated Movies"
        static let topRatedTVString = "Top Rated TV"
    }
    
    struct Icon {
        static let homeIconString = "house"
        static let upcomingIconSring = "play.circle"
        static let searchIconString = "magnifyingglass"
        static let downloadIconString = "arrow.down.to.line"
    }
    
    struct URL {
        static let testTitleURL = "https://lh3.googleusercontent.com/d/1Gb5qAKr3sfprqumQ9QMuM4GwC97sv6qW=s0"
        static let testTitleURL2 = "https://lh3.googleusercontent.com/d/1HRy55F6SN5i4tKpIlnkq-ROkwyua_FlX=s0"
        static let testTitleURL3 = "https://lh3.googleusercontent.com/d/14kjmdsnQqI1q6a-NtXft6KgSAdU7t1Nt=s0"
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
