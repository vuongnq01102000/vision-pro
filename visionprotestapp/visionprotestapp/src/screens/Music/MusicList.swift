//
//  MusicList.swift
//  visionprotestapp
//
//  Created by Quoc Vuong on 7/1/24.
//

import SwiftUI

struct MusicList: View {
    let trackList  = Track.preview()
    @State private var searchText = ""

    var body: some View {
        NavigationStack{
           
            
            List(trackList) { item in
                TrackCardDetail(track: item)
            }.searchable(text: $searchText)
        }
    }
}

#Preview( windowStyle: .plain) {
    MusicList()
}
