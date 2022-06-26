//
//  ContentView.swift
//  Basics
//
//  Created by apple on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    
   @State var playerCard = "back"
   @State var cpuCard = "back"
    @State var cpuScore = 0
    @State var playerScore = 0
    
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    print("deal tapped")
                    let PlayerRandom = Int.random(in: 2...14)
                    let cpuRandom = Int.random(in: 2...14)
                    playerCard = "card\(PlayerRandom)"
                    cpuCard = "card\(cpuRandom)"
                    cpuScore += 1
                    playerScore += 1
                } label: {
                    Image("dealbutton")
                }.padding()

                Spacer()
                Group {
                    HStack{
                        Spacer()
                        ExtractedView(score: "\(playerScore)")
                        Spacer()
                        ExtractedView(score: "\(cpuScore)")
                        Spacer()
                    }
                    Spacer()
                }
                Spacer()
        
            
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    
    var score = ""
    
    var body: some View {
        VStack{
            Text("Player")
                .foregroundColor(.white)
                .font(.system(size: 25))
            
            Text(score)
                .foregroundColor(.white)
                .font(.system(size: 30))
                .bold()
                .padding()
            
        }
    }
}
