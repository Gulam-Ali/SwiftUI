//
//  RowView.swift
//  MenuList
//
//  Created by apple on 15/07/22.
//

import SwiftUI

struct RowView: View {
    
    let itemm : MenuItem
    
    var body: some View {
        HStack{
            Image("\(itemm.thumbnailImage)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(.green,lineWidth: 2.0))
            Text(itemm.name)
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(itemm: .example)
    }
}
