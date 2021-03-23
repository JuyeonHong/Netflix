//
//  TopMoviePreview.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/03/22.
//

import SwiftUI
import KingfisherSwiftUI

struct TopMoviePreview: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            
            VStack {
                Spacer()
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                HStack {
                    VStack {
                        
                        Text("My List")
                    }
                    Text("Play button")
                    Text("Info button")
                }
            }
        }
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
    }
}

extension TopMoviePreview {
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        // if a + 1 != 4
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        
        return true
    }
}
