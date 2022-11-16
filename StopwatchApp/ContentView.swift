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
                
                Spacer()
                
                Text("00:09.96")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundColor(.white)

                //Create a circular button
                HStack {
                    CircleButtonView(buttonColour: Color("Dark Grey"), label: "Reset", labelColour: .white)
                    
                    Spacer()
                    
                    CircleButtonView(buttonColour: Color("Dark Green"), label: "Start", labelColour: .green)
                }
                //List of times
                List {
                    
                    Group {
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        Text("5")
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .frame(height: 300)
                .listStyle(.plain)
                
            }
            
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(3)) {
            
            Text("World Clock")
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
            
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                    
                }
                    ContentView()
                        .tabItem {
                            Image(systemName: "stopwatch.fill")
                            Text("Stopwatch")
                        }
                    
                    Text("Timer")
                        .tabItem {
                            Image(systemName: "timer")
                            Text("Timer")
                        }
        }
        //  Change the accent colour of the currently active tab item
        .accentColor(.orange)
        //Make tab items visible
        .preferredColorScheme(.dark)
    }
}

