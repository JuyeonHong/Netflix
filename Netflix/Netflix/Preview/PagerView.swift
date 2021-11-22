//
//  PagerView.swift
//  Netflix
//
//  Created by hongjuyeon_dev on 2021/10/22.
//

import SwiftUI

struct PagerView<Content: View>: View {
    
    let pageCount: Int
    @Binding var currenIndex: Int
    @Binding var translation: CGFloat
    
    @State private var verticalDragIsActive = false
    
    let externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>
    let content: Content
    
    init(
        pageCount: Int,
        currenIndex: Binding<Int>,
        translation: Binding<CGFloat>,
        externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>,
        @ViewBuilder content: () -> Content
    ) {
        self.pageCount = pageCount
        self._currenIndex = currenIndex
        self._translation = translation
        self.externalDragGesture = externalDragGesture
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                self.content
                    .frame(width: geo.size.width)
            }
            .frame(width: geo.size.width, alignment: .leading)
            .offset(x: -CGFloat(self.currenIndex) * geo.size.width)
            .offset(x: self.translation)
            .animation(.interactiveSpring())
            .gesture (
                externalDragGesture.simultaneously(
                    with:
                        DragGesture(minimumDistance: 20)
                        .onChanged { value in
                            
                            if verticalDragIsActive {
                                return
                            }
                            
                            if abs(value.translation.width) < abs(value.translation.height) {
                                verticalDragIsActive  = true
                                return
                            }
                            
                            // horizontal drag only
                            
                            translation = value.translation.width
                        }
                        .onEnded { value in
                            
                            if verticalDragIsActive {
                                verticalDragIsActive = false
                                return
                            }
                            
                            // ending horizontal drag
                            
                            let offset = value.translation.width / geo.size.width
                            let newIndex = (CGFloat(self.currenIndex) - offset).rounded()
                            currenIndex = min(max(Int(newIndex), 0), self.pageCount - 1)
                            translation = 0
                        })
            )
        }
        
    }
}

//struct PagerDummy: View {
//    @State private var currentIndex: Int = 0
//    @State private var translation: CGFloat = .zero
//
//    var body: some View {
//        PagerView(pageCount: 3, currenIndex: $currentIndex, translation: $translation) {
//            Color.red
//            Color.blue
//            Color.black
//        }
//    }
//}
//
//struct PagerView_Previews: PreviewProvider {
//    static var previews: some View {
//        PagerDummy()
//    }
//}
