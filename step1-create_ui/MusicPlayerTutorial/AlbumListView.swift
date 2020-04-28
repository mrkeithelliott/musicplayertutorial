//
//  ContentView.swift
//  MusicPlayerTutorial
//
//  Created by Keith on 4/27/20.
//  Copyright © 2020 GittieLabs. All rights reserved.
//

import SwiftUI

struct AlbumListView: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal){
                        HStack {
                            ForEach(albumlist, id: \.id) { album in
                                AlbumCard(album: album).frame(height:400)
                            }
                        }
                    }
                    Text("Top Albums")
                        .font(.largeTitle)
                        .bold()
                    VStack {
                        ForEach(albumlist, id: \.id) {album in
                            TopAlbumCard(album: album)
                        }
                    }
                }
                .padding()
            }.navigationBarTitle("My Albums")
        }
        .foregroundColor(.primary)
        .accentColor(.red)
    }
}

struct AlbumCard: View {
    var album: Album
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(album.albumArtString)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 180, height: 300)
            VStack{
                Text(album.name)
                    .font(.headline)
                    .lineLimit(2)
                Text(album.artist)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                NavigationLink(destination: AlbumDetailView(album: album)){
                    Text("Read More").font(.caption)
                        .foregroundColor(.accentColor)
                }
            }
            .padding()
            .layoutPriority(100)
            Spacer()
        }
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
    }
}

struct MoreButtonView: View {
    var album: Album
    
    var body: some View {
        NavigationLink(destination: AlbumDetailView(album: album)){
        VStack {
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
                Circle().frame(width: 5, height: 5)
            }
            .foregroundColor(.accentColor)
        }
    }
}

struct TopAlbumCard: View {
    var album: Album
    
    var body: some View {
        HStack {
            Image(album.albumArtString)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:40, height: 40)
                .clipShape(Circle())
            VStack {
                Text(album.name)
                    .font(.headline)
                Text(album.artist)
                    .font(.subheadline)
                    .foregroundColor(.accentColor)
            }
            Spacer()
            MoreButtonView(album: album)
        }
        .padding()
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.4), lineWidth: 1)
        )
            .shadow(radius: 1)
    }
}

struct AlbumListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlbumListView()
            AlbumListView().environment(\.colorScheme, .dark)
            TopAlbumCard(album: albumlist[0])
                .previewLayout(.fixed(width: 380, height: 75))
            MoreButtonView(album: albumlist[0]).previewLayout(.fixed(width: 20, height: 80))
        }
    }
}
