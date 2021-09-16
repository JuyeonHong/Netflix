//
//  CommingSoonVM.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/09/10.
//

import Foundation

class CommingSoonVM: ObservableObject {
    
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
