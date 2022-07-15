//
//  ContentView.swift
//  MenuList
//
//  Created by apple on 15/07/22.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ Sectionn in
                    Section(header: Text("\(Sectionn.name)").font(.system(size: 18, weight: .semibold, design: .monospaced))){
                        ForEach(Sectionn.items){ item in
                            
                            NavigationLink(destination: itemdetails(itemdetail: item)) {
                                RowView(itemm: item)
                            }
                            
                        }
                    }
                }
                
            }
            .navigationTitle("Home")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
