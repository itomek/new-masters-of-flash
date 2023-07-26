//
//  BubbleView.swift
//  MastersOfFlash
//
//  Created by Tomasz Iniewicz on 6/11/23.
//

import SwiftUI

struct BubbleView: View {
    
    var body: some View {
        
        Circle()
            .fill(LinearGradient(
                gradient: Gradient(colors: [
                    .black,
                    Color(
                        red: 0.1,
                        green: 0.2,
                        blue: 0.70)
                ]),
                startPoint:
                    UnitPoint(
                        x: .zero - 0.8,
                        y: .zero - 0.05),
                endPoint:
                    UnitPoint(
                        x: .zero + 0.7,
                        y: .zero + 1)
            ))
    }
}


struct BubbleView_Previews: PreviewProvider {
    static var previews: some View {
        BubbleView()
    }
}
