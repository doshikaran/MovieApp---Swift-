//
//  MoviePosterCarouselView.swift
//  movieApp
//
//  Created by Karan Doshi on 6/28/23.
//

import SwiftUI

struct MoviePosterCarouselView: View {
    let title: String
    let movies : [Movie]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
            Text(title) .font(.title)
                .fontWeight(.bold)
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 15){
                    ForEach(movies) { movie in
                        MoviePosterCard(movie: movie)
                            .padding(.leading, movie.id == self.movies.first!.id ? 15 : 0)
                            .padding(.trailing, movie.id == self.movies.last!.id ? 15 : 0)
                    }
                }
            }
        }
    }
}

struct MoviePosterCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        MoviePosterCarouselView(title: "Now Playing", movies: Movie.stubbedMovies)
    }
}
