//
//  SearchView.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/07/09.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var vm = SearchVM()
    
    @State private var searchText = ""
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set: {
            searchText = $0
            vm.updateS earchText(with: $0)
        }
        
        return ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SearchBar(text: searchTextBinding, isLoading: $vm.isLoading)
                    .padding()
                 
                ScrollView {
                    if vm.isShowingPopularMovies {
                        Text("Popular Movies")
                        
                    }
                    
                    if vm.viewState == .empty {
                        Text("empty")
                    } else if vm.viewState == .ready && !vm.isShowingPopularMovies {
                        Text("search results")
                    }
                    
                }
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
