//
//  GenerateMovies.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/07/09.
//

import Foundation

func generateMovies(_ count: Int) -> [Movie] {
    guard count > 0 else { return [] }
    
    var allMovies: [Movie] = []
    
    for _ in 0..<count {
        let id = UUID().uuidString
        
        let nameLength = Int.random(in: 9..<20)
        let name = randomString(length: nameLength)
        
        let randThumbnail = Int.random(in: 0...9)
        let thumbnail = URL(string: "https://picsum.photos/300/10\(randThumbnail)")!
        
        let year = Int.random(in: 2000...2020)
        
        let cast = "Lorem ipsum, dolor sit"
        let creators = "felis non, libero consetetur"
        let categories = ["consetetur", "neque", "felis", "libero"]
        
        let headline - "Watch now!"
        
        let numSeasons = Int.random(in: 1...3)
        
        var allEpisodes: [Episode] = []
        
        for i in 1...numSeasons {
            allEpisodes.append(generateEpisodes()5, i))
            
            
        }
    }
    
}
