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

let exampleVideoURL = URL(string: "https://www.radiantmdeiaplayer.com/media/big-buck-bunny-360.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let episode1 = Episode(name: "Beginning and Endings",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/102",
                       description: "Six months after the disapperances, the plice form a task force. In 2052, Konas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/103",
                       description: "Clausen and Charoltte Interivew Regina. The Stranger takes Hannah to 1987, where Claudia has an unnverving encounter the Egon visits an old nemesis.",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode3 = Episode(name: "Beginning and Endings",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/104",
                       description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Cludia vrings the time machine To Tannhaus, and Egon questions Ulrich again.",
                       length: 56,
                       videoURL: exampleVideoURL)
let episode4 = Episode(name: "Beginning and Endings",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/105",
                       description: "Six months after the disapperances, the plice form a task force. In 2052, Konas learns that most of Winden perished in an apocalyptic event.",
                       length: 53,
                       videoURL: exampleVideoURL)
let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/106",
                       description: "Clausen and Charoltte Interivew Regina. The Stranger takes Hannah to 1987, where Claudia has an unnverving encounter the Egon visits an old nemesis.",
                       length: 54,
                       videoURL: exampleVideoURL)
let episode6 = Episode(name: "Beginning and Endings",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/107",
                       description: "In 1954, a missing Helge returns, but he'll only speak to Noah. In 1987, Cludia vrings the time machine To Tannhaus, and Egon questions Ulrich again.",
                       length: 56,
                       videoURL: exampleVideoURL)

let allExampleEpisodes = [episode1, episode2, episode3, episode4, episode5, episode6]


let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons:2,
                          defaultEpisodeInfo: exampleEpisodeInfo1,
                          creators: "Christopher Nolan",
                          cast: "Leonardo DiCaprio, Joseph Gordon-Levitt, Elliot Page",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
                          episode: allExampleEpisodes,
                          trailers: exampleTrailers)
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
                          promotionHeadline: "Best Rated Show",
                          trailers: exampleTrailers)
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
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)
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
                          promotionHeadline: "New episode coming soon",
                          trailers: exampleTrailers)
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
                          moreLikeThisMovies: [],
                          trailers: exampleTrailers)
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
                          promotionHeadline: "Watch Season 6 Now",
                          trailers: exampleTrailers)
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
                          promotionHeadline: "Watch Season 7 Now",
                          trailers: exampleTrailers)

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

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
 
