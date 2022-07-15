//
//  itemdetails.swift
//  MenuList
//
//  Created by apple on 15/07/22.
//

import SwiftUI

struct itemdetails: View {
    
    let itemdetail : MenuItem
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing) {
                Image(itemdetail.mainImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(itemdetail.photoCredit)
                    .padding(6)
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.caption)

            }
            Text(itemdetail.description)
                .padding()
                .padding(.top)
            Spacer()
                
        }
        .navigationTitle(itemdetail.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct itemdetails_Previews: PreviewProvider {
    static var previews: some View {
        itemdetails(itemdetail: .example)
    }
}
