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
        VStack {
            AsyncImage(url: URL(string: heroTestTitle)){ image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            
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
        }
    }
}

#Preview {
    HomeView()
}
