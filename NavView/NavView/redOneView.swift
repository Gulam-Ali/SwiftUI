//
//  ContentView.swift
//  NavView
//
//  Created by apple on 14/07/22.
//

import SwiftUI

struct redOneView: View {
    var body: some View {
        NavigationView{
            VStack{
                circularNumberView(number: 1, circleColor: .red)
                    .navigationTitle("Dashboard")
                    .offset(y: -60)
                
                NavigationLink {
                    blueTwoView()
                } label: {
                    Text("Next screen")
                }

            }
        }
    }
}


struct blueTwoView: View {
    var body: some View {
        
        VStack{
            circularNumberView(number: 2, circleColor: .blue)
                .offset(y: -60)
                .navigationTitle("Blue View")
                .navigationBarTitleDisplayMode(.inline)
            NavigationLink {
                Text("Destination")
            } label: {
                Text("Next screen")
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        redOneView()
        blueTwoView()
    }
}


struct circularNumberView: View {
    
    var number : Int
    var circleColor : Color
    
    var body: some View{
        ZStack{
            Circle()
                .foregroundColor(circleColor)
                .frame(width: 200, height: 200, alignment: .center)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size: 70, weight: .bold, design: .default))
        }
    }
}
