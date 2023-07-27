//
//  BubbleBorder.swift
//  MastersOfFlash
//
//  Created by Tomasz Iniewicz on 7/26/23.
//

import SwiftUI

struct BubbleBorder: View {
    var body: some View {
        Circle()
            .fill(
                .radialGradient(
                    Gradient(colors: [
                        Color(
                            red: 0.3,
                            green: 0.3,
                            blue: 0.3,
                            opacity: 0
                        ),
                        Color(
                            red: 0.3,
                            green: 0.3,
                            blue: 0.3,
                            opacity: 0
                        ),
                        Color(
                            red: 0.1,
                            green: 0.1,
                            blue: 0.9,
                            opacity: 0.4
                        ),
                        Color(
                            red: 0, green: 0, blue: 0, opacity: 1
                        )
                    ]), center: .center,
                    startRadius: 100,
                    endRadius: 180)
            )
    }
}

struct BubbleBorder_Previews: PreviewProvider {
    static var previews: some View {
        BubbleBorder()
            .background(.black)
    }
}
