//
//  CircularProgressView.swift
//  StopwatchApp
//
//  Created by Alistair Fraser on 2022-11-17.
//

import SwiftUI

struct CircularProgressView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color.gray.opacity(0.5),
                    lineWidth: 8
                )
            Circle()
                .trim(from: 0, to: 0.94)
                .stroke(
                    Color.orange,
                    lineWidth: 8
                    )
                // Rotate the circle so its facing the right way
                .rotationEffect(.degrees(-90))

        }
    }
}


struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
    }
}
