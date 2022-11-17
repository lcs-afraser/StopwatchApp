//
//  TimerView.swift
//  StopwatchApp
//
//  Created by Alistair Fraser on 2022-11-17.
//

import SwiftUI

struct TimerView: View {
    var body: some View {
        
        VStack {
            ZStack {
                CircularProgressView()
                    .padding(0)
                VStack {
                    Text("01:54")
                        .font(Font.system(size: 75, weight: .thin))
                    HStack {
                        Image(systemName: "bell.fill")
                            .foregroundColor(Color.gray)
                        Text("12:25 PM")
                            .foregroundColor(Color.gray)
                    }
                }
            }

            HStack {
                CircleButtonView(buttonColour: Color("Dark Grey"), label: "Cancel", labelColour: .white)
                
                Spacer()
                
                CircleButtonView(buttonColour: Color("Dark Orange"), label: "Pause", labelColour: .orange)
            }
            List {
                HStack {
                    Text("When Timer Ends")
                    Spacer()
                    Text("Radar")
                        .foregroundColor(Color.gray)
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color.gray)
                }
            }
            .frame(height: 100)
            .padding(.bottom, 125)
            Spacer()
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(4)) {
            
            Text("World Clock")
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
                .tag(1)
            
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                    
                }
                .tag(2)
            ContentView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
                .tag(3)
            TimerView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(4)
        }
        //  Change the accent colour of the currently active tab item
        .accentColor(.orange)
        //Make tab items visible
        .preferredColorScheme(.dark)
    }
}

