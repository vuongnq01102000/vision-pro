//
//  Album.swift
//  visionprotestapp
//
//  Created by Quoc Vuong on 7/1/24.
//

import Foundation

struct Album: Identifiable {
    var id = UUID()
    var name: String
    var imageCover: String
    var listTrack: Array<Track>
}

struct Track:Identifiable {
    var id = UUID()
    var name: String
    var artist: String
    var imageCover: String
    
    
    static func preview() -> [Track] {
        return [
            Track( name: "Ai Mà Biết Được (feat. tlinh)", artist: "SOOBIN, tlinh" ,imageCover:  "https://bloganchoi.com/wp-content/uploads/2024/06/lyrics-ai-ma-biet-duoc-soobin-tlinh-2-696x696.jpg"),
            Track( name: "Ai Mà Biết Được (feat. tlinh)", artist: "SOOBIN, tlinh" ,imageCover:  "https://bloganchoi.com/wp-content/uploads/2024/06/lyrics-ai-ma-biet-duoc-soobin-tlinh-2-696x696.jpg"),
            Track( name: "Ai Mà Biết Được (feat. tlinh)", artist: "SOOBIN, tlinh" ,imageCover:  "https://bloganchoi.com/wp-content/uploads/2024/06/lyrics-ai-ma-biet-duoc-soobin-tlinh-2-696x696.jpg"),
            Track( name: "Ai Mà Biết Được (feat. tlinh)", artist: "SOOBIN, tlinh" ,imageCover:  "https://bloganchoi.com/wp-content/uploads/2024/06/lyrics-ai-ma-biet-duoc-soobin-tlinh-2-696x696.jpg"),
            Track( name: "Ai Mà Biết Được (feat. tlinh)", artist: "SOOBIN, tlinh" ,imageCover:  "https://bloganchoi.com/wp-content/uploads/2024/06/lyrics-ai-ma-biet-duoc-soobin-tlinh-2-696x696.jpg"),
        ]
    }
}
