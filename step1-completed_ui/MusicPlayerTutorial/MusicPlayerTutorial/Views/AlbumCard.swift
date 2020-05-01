//
//  AlbumCard.swift
//  MusicPlayerTutorial
//
//  Created by Keith on 4/30/20.
//  Copyright © 2020 GittieLabs. All rights reserved.
//

import SwiftUI

struct AlbumCard: View {
    var album: Album
    
    var body: some View {
        VStack {
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
            Spacer()
        }
        .frame(height: 400)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .shadow(radius: 1)
    }
}

struct AlbumCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlbumCard(album: albumlist[0])
                .previewLayout(.fixed(width: 300, height: 510))
            AlbumCard(album: albumlist[1])
            .previewLayout(.fixed(width: 300, height: 510))
        }
    }
}
