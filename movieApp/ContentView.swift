//
//  ContentView.swift
//  movieApp
//
//  Created by Karan Doshi on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MovieListView().tabItem {
                VStack {
                    Image(systemName: "tv")
                    Text("Movies")
                }
            }
            .tag(0)
            
            MovieSearchView().tabItem {
                VStack {
                    Image(systemName: "magnifyingglass")
                    Text("Search Movie")
                }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
