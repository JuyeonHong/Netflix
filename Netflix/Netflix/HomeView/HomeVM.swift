//
//  HomeVM.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/03/22.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map { String($0) }
    }
    
    public var allGenre: [HomeGenre] = [.AllGenre, .Action, .Comedy, .Horror, .Thriller]
    
    public func getMovie(forCat cat: String, andHomeRow homeRow: HomeTopRow, andGenre genre: HomeGenre ) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
            
        case .movies:
            return (movies[cat] ?? []).filter({ $0.movieType == .movie && $0.genre == genre })
            
        case .tvShows:
            return (movies[cat] ?? []).filter({ $0.movieType == .movie  && $0.genre == genre })
            
        case .myList:
            // TODO: Setup MyList Property
            return movies[cat] ?? []
             
        }
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Release"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci"] = exampleMovies.shuffled()
    }
}
