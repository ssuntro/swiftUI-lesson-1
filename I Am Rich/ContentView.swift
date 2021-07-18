//
//  ContentView.swift
//  I Am Rich
//
//  Created by Siroratt Suntronsuk on 18/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52) //0-1: none to full bar
                .edgesIgnoringSafeArea(.all)
//                .ignoresSafeArea(.container, edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            VStack {
                Image("ann")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Ann Siroratt Suntronsuk")
                    .font(Font.custom("Lobster-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("software consultant") //job title
                    .foregroundColor(.white)
                    .font(Font.system(size: 25))
                Divider()
                InfoView(displayText: "+ 6694 555 5555", icon: Image(systemName: "phone.fill"))
                
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
