//
//  SearchVM.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/07/09.
//

import Foundation
import SwiftUI

class SearchVM: ObservableObject {
    
    @Published var isLoading = false
    
    @Published var viewState: ViewState = .ready
    
    @Published var popularMovies: [Movie] = []
    @Published var searchResults: [Movie] = []
    
    @Published var isShowingPopularMovies = true
    
    init() {
        getPopularMovies()
    }
    
    
    public func updateSearchText(with text: String) {
        setViewState(to: .loading)
        
        getSearchResults(forText: text)
    }
    
    private func getPopularMovies() {
        self.popularMovies = generateMovies(40)
    }
    
    private func getSearchResults(forText text: String) {
       
        let haveResult = Int.random(in: 0...3)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if haveResult == 0 {
                // empty view
                self.searchResults = []
                self.setViewState(to: .empty)
                
            } else {
                //ready view
                let movies = generateMovies(23)
                self.searchResults = movies
                self.setViewState(to: .ready)
            }
        }
    }
    
    private func setViewState(to state: ViewState) {
        DispatchQueue.main.async {
            self.viewState = state
            self.isLoading = state == .loading
        }
    }
}


enum ViewState {
    case empty
    case loading
    case ready
    case error
}
