//
//  ContentView.swift
//  StudyProjectSwift
//
//  Created by Lư Tấn Đạt on 3/1/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(
                Constants.Text.homeString,
                systemImage: Constants.Icon.homeIconString
            ) {
                HomeView()
            }
            Tab(
                Constants.Text.upcomingString,
                systemImage: Constants.Icon.upcomingIconSring
            ) {
                Text(Constants.Text.upcomingString)
            }
            Tab(
                Constants.Text.searchString,
                systemImage: Constants.Icon.searchIconString
            ) {
                Text(Constants.Text.searchString)
            }
            Tab(
                Constants.Text.downloadString,
                systemImage: Constants.Icon.downloadIconString
            ) {
                Text(Constants.Text.downloadString)
            }
        }
    }
}

#Preview {
    ContentView()
}
