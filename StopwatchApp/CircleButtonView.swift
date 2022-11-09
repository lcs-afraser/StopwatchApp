//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Alistair Fraser on 2022-11-09.
//

import SwiftUI

struct CircleButtonView: View {
    
    //MARK: Stored properties
    let buttonColour: Color
    let label: String
    let labelColour: Color
    
    //User Interface
    var body: some View {
        ZStack {
            
            //First layer
            Circle()
                .foregroundColor(buttonColour)
            .frame(width: 100)
            
            //Second layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            //Third layer
            Circle()
                .foregroundColor(buttonColour)
                .frame(width: 89)
            
            //Fourth layer
            Text(label)
                .foregroundColor(labelColour)
                .font(.title2)
        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(buttonColour: .gray, label: "Reset", labelColour: .white)
    }
}
