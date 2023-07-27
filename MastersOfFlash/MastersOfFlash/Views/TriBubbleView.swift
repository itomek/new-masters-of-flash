//
//  TriBubbleView.swift
//  MastersOfFlash
//
//  Created by Tomasz Iniewicz on 6/11/23.
//

import SwiftUI

struct TriBubbleView: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            ZStack {
                
                // MARK: Left Bubble
                ZStack(alignment: .center) {
                    
                    BubbleView()
                        .rotationEffect(.degrees(120))
                    BubbleDrawView()
                }
                .rotationEffect(.degrees(100))
                .scaleEffect(x: 0.5, y: 0.5)
                .position(CGPoint(
                    x: geometry.size.width / 2 - 80,
                    y: geometry.size.height / 2 + 50
                ))
                .opacity(0.7)
                
                // MARK: Top Bubble
                ZStack(alignment: .center) {
                    BubbleView()
                        .rotationEffect(.degrees(120))
                    BubbleDrawView()
                }
                .rotationEffect(.degrees(-140))
                .scaleEffect(x: 0.5, y: 0.5)
                .position(CGPoint(
                    x: geometry.size.width / 2 - 0,
                    y: geometry.size.height / 2 - 95
                )).opacity(0.7)
                
                // MARK: Right Bubble
                ZStack(alignment: .center) {
                    BubbleView()
                        .rotationEffect(.degrees(120))
                    BubbleDrawView()
                }
                .rotationEffect(.degrees(0))
                .scaleEffect(x: 0.5, y: 0.5)
                .position(CGPoint(
                    x: geometry.size.width / 2 + 80,
                    y: geometry.size.height / 2 + 50
                )).opacity(0.7)
            }
        }
    }
}

struct TriBubbleView_Previews: PreviewProvider {
    static var previews: some View {
        TriBubbleView()
//            .background(.black)
    }
}
