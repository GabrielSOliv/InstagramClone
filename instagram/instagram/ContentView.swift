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
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        StorySection()
                        PostSection(image: "profile1", name: "larissa12")
                        PostSection(image: "profile2", name: "vitinBrabo")
                        PostSection(image: "profile3", name: "daniz")
                        PostSection(image: "profile4", name: "lucas15")
                    }
                }
            }
            TabBar()
            
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
            
        } .frame(width: UIScreen.main.bounds.width, height: 35)
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

struct StorySection: View {
    var body: some View {
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
    }
}

struct PostSection: View {
    var image: String = ""
    var name: String = ""
    
    var body: some View {
        VStack{
            HStack{
                Image(image)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                    .padding(.leading, 6)
                Text(name)
                    .foregroundColor(.white)
                    .font(.caption)
                Spacer()
                Image("options")
                    .padding()
            }
            Image(image)
                .resizable()
                .frame(width: 400, height: 375)
                .padding(.bottom, -12)
                .padding(.top, -12)
            HStack(spacing: 12.0){
                Image("Like")
                    .padding(.leading)
                Image("Comment")
                Image("Share")
                Spacer()
                Image("Bookmark")
                    .padding()
            }
            VStack{
                HStack {
                    Text(name)
                        .foregroundColor(.white)
                        .bold()
                    Text("legend writer")
                        .foregroundColor(.white)
                    Spacer()
                } .padding()
                    .padding(.top, -30)
                
                HStack {
                    Text("...")
                        .foregroundColor(.white)
                        .padding(.leading)
                    Text("more")
                        .foregroundColor(.gray)
                        .padding(.leading, -4)
                    Spacer()
                } .padding(.top, -20)
                HStack {
                    Text("View all 2232 comments")
                        .foregroundColor(.gray)
                        .padding(.leading)
                        .padding(.top, -8)
                    Spacer()
                }
                HStack {
                    Text("27 July ・")
                        .foregroundColor(.gray)
                    Text("See Translation")
                        .foregroundColor(.white)
                        .padding(.leading, -4)
                    Spacer()
                } .padding(.leading)
                    .padding(.top, -9)
            }
        }
    }
}

struct TabBar: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack(spacing: 0.0){
                    Image("Home")
                    Spacer()
                    Image("Search")
                    Spacer()
                    Image("Reel Outline")
                    Spacer()
                    Image("Bag")
                    Spacer()
                    Image("Profile")
        
                }
                .padding(.horizontal, 50)
                .padding()
                .background(Color("BackgroundColor").ignoresSafeArea())
            }
        }
    }
}
