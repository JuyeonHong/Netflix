//
//  PreviewVM.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/11/12.
//

import Foundation

class PreviewVM: ObservableObject {
    
    var movie: Movie
    
    init(movie: Movie) {
        self.movie = movie
    }
    
}
