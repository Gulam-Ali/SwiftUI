//
//  ContentView.swift
//  WeatherApp
//
//  Created by apple on 26/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNight = false
    
    var body: some View {
        ZStack{

            ExtractedView(isNight: $isNight)
            VStack{
                Text("New Delhi,IN")
                    .font(.system(size: 30, weight: .medium, design: .serif))
                    .foregroundColor(.white)
                    .padding()
               
                VStack(alignment: .center, spacing: 8){
                    Image(systemName: isNight ? "cloud.sun.fill" : "moon.stars.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120.0, height: 120.0, alignment: .center)
                    
                    Text("35°")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
    
                }
                
                HStack(alignment: .center, spacing: 10){
                    dayView(day: "Mon", imagename: "moon.stars.fill", temperature: "10°")
                    dayView(day: "Tue", imagename: "cloud.rain.fill", temperature: "20°")
                    dayView(day: "Wed", imagename: "sun.max.fill", temperature: "35°")
                    dayView(day: "Thu", imagename: "wind", temperature: "8°")
                    dayView(day: "Fri", imagename: "cloud.rain.fill", temperature: "12°")
                    dayView(day: "Sat", imagename: "cloud.sun.fill", temperature: "20°")
                }.padding()
                Spacer()
                
                Button{
                    print("change day tapped")
                    isNight.toggle()
                }label: {
                    Text("Change the day")
                        .frame(width: 280, height: 55, alignment: .center)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .background(Color.white)
                        .cornerRadius(12)
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

struct dayView: View {
    
    let day : String!
    let imagename : String!
    let temperature : String!
    
    var body: some View {
    
        VStack(alignment: .center, spacing: 12){
            Text(day)
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .foregroundColor(.white)
            
            
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
            
            Text(temperature)
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .medium, design: .rounded))
            
        }
    }
}

struct ExtractedView: View {
    
    @Binding var isNight : Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .blue : .black, isNight ? Color("lightBlue") : .gray],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}
