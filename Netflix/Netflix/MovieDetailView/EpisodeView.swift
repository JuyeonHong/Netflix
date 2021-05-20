//
//  EpisodeView.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/05/20.
//

import SwiftUI

struct EpisodeView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisode(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season})
    }
    
    var body: some View {
        VStack {
            // season picker
            
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                
                Spacer()
            }
            
            // episode list
            ForEach(getEpisode(forSeason: selectedSeason)) { episode in
                Text("test")
            }
            
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            EpisodeView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
