//
//  SwiftUIVideoView.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/05/20.
//

import SwiftUI
import AVKit

struct SwiftUIVideoView: View {
    var url: URL
    
    private var player: AVPlayer {
        AVPlayer(url: url)
    }
    
    var body: some View {
        VideoPlayer(player: player)
    }
}

struct SwiftUIVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIVideoView(url: exampleVideoURL)
    }
}
