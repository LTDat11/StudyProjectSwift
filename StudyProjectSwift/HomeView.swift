//
//  HomeView.swift
//  StudyProjectSwift
//
//  Created by Lư Tấn Đạt on 3/1/26.
//

import SwiftUI

struct HomeView: View {
    var heroTestTitle = Constants.URL.testTitleURL
      
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVStack {
                    AsyncImage(url: URL(string: heroTestTitle)){ image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width, height: geo.size.height * 0.85)
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text(Constants.Text.playString)
                                .ghostButton()
                        }
                        
                        Button {
                            
                        } label: {
                            Text(Constants.Text.downloadString)
                                .ghostButton()
                        }
                    }
                    HorizontalListView(header: Constants.Text.trendingMovieString)
                    HorizontalListView(header: Constants.Text.trendingTVString)
                    HorizontalListView(header: Constants.Text.topRatedMvoieString)
                    HorizontalListView(header: Constants.Text.topRatedTVString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
