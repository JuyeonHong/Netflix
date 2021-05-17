//
//  GlobalHelpers.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/03/22.
//
// 일괄 missing argument 추가하기: command option control F
// resume preview: option command p

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons:1,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7])
let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travelers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [],
                          promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [])
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [],
                          promotionHeadline: "New episode coming soon")
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [])
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [],
                          promotionHeadline: "Watch Season 6 Now")
let exampleMovie7 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [],
                          promotionHeadline: "Watch Season 7 Now")

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "The Beginning and End of the Universe",
                                             description: "This is a two-part British television series outlining the theory of the beginning of the universe and the theories about its ending",
                                             season: 2,
                                             episode: 1)

extension LinearGradient  {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
