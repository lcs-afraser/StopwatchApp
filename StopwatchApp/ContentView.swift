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
            Color.yellow
                .ignoresSafeArea()
            //Foreground
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
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
