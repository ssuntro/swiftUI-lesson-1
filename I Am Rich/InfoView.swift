//
//  InfoView.swift
//  I Am Rich
//
//  Created by Siroratt Suntronsuk on 18/7/2564 BE.
//

import SwiftUI

struct InfoView: View {
    let displayText: String
    let icon: Image
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 40)
//                    .foregroundColor(.white)
            .overlay(HStack {
                icon
                    .foregroundColor(.green)
                Text(displayText)
            }).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(displayText: "Ann ja", icon: Image(systemName: "phone.fill"))
            .previewLayout(.sizeThatFits)
    }
}
