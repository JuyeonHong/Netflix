//
//  Trailer.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/05/20.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
