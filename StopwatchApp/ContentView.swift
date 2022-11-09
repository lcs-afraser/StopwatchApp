//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Alistair Fraser on 2022-11-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          
            //Background
            Color.black
                .ignoresSafeArea()
            
            //Foreground
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)

                //Create a circular button
                HStack {
                    CircleButtonView(buttonColour: Color("Dark Grey"), label: "Reset", labelColour: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColour: Color("Dark Green"), label: "Start", labelColour: .green)
                }
            }
            
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

