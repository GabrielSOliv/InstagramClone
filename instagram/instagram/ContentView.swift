//
//  ContentView.swift
//  instagram
//
//  Created by Gabriel Oliveira on 21/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                HStack{
                   Image("Logo")
                        .frame(width: 103, height: 29)
                        .padding(.leading, 16)
                        .padding(.top, 20)
                        .padding(.trailing, 128)
                    Spacer()
                    Image("Upload")
                         .frame(width: 24, height: 24)
                         .padding(.trailing, 20)
                         .padding(.top, 20)
                     Spacer()
                    Image("Like")
                         .frame(width: 24, height: 24)
                         .padding(.trailing, 20)
                         .padding(.top, 20)
                     Spacer()
                    Image("Message")
                         .frame(width: 24, height: 24)
                         .padding(.trailing, 20)
                         .padding(.top, 20)
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
