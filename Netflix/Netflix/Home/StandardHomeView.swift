//
//  StandardHomeView.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/03/22.
//

import SwiftUI
import KingfisherSwiftUI

struct StandardHomeView: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeView(movie: exampleMovie1)
    }
}
