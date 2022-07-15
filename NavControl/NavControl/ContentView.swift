//
//  ContentView.swift
//  NavControl
//
//  Created by apple on 26/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            CircularView(color: .red, number: 1)
                .navigationTitle("Red One")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CircularView: View {
    
    var color : Color
    var number : Int
    
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(color)
                .aspectRatio(contentMode: .fit)
            
            Text("\(number)")
                .font(.system(size: 50, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
