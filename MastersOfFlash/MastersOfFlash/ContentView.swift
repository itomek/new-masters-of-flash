//
//  ContentView.swift
//  MastersOfFlash
//
//  Created by Tomasz Iniewicz on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isRotate = false
    @State var rotationDegrees = 0.0
    
    var body: some View {
        ZStack {
            TriBubbleView()
                .rotationEffect(.degrees(0))
                .opacity(0.3)
            TriBubbleView()
                .rotationEffect(.degrees(60))
                .opacity(0.3)
        }
        .overlay {
            BubbleBorder()
        }
        .rotationEffect(.degrees(rotationDegrees))
        .onTapGesture {
            withAnimation {
                rotate()
            }
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
    
    func rotate() {
        rotationDegrees = rotationDegrees.advanced(by: 45)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
