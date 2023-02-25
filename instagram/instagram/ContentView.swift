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
                Header()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15.0) {
                        Story(image: "profile1", name: "Larissa Yam")
                        Story(image: "profile2", name: "Vitor Gabriel")
                        Story(image: "profile3", name: "Daniela Carla")
                        Story(image: "profile4", name: "Lucas Moreira")
                        Story(image: "profile5", name: "Dam")
                        Story(image: "profile6", name: "Luna Lin")
                        Story(image: "profile1", name: "Larissa Yam")
                    }
                    .padding(.horizontal, 8)
                }
                .padding(.vertical, 10)
                
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

struct Header: View{
    var body: some View{
        HStack{
           Image("Logo")
                .padding()
            Spacer()
            HStack(spacing: 20.0){
                Image("Upload")
                Image("Like")
                Image("Message")
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 3)
            
        }
    }
}

struct Story: View {
    var image: String = ""
    var name: String = ""
    
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottom), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}
