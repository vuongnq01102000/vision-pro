//
//  CardDetail.swift
//  visionprotestapp
//
//  Created by Quoc Vuong on 7/1/24.
//

import SwiftUI


struct CardDetail: View {
    var track: Track
    
    
    
    var body: some View {
        HStack(alignment: .center) {
            
            AsyncImage(url:URL(string: track.imageCover)) { image in
                image.resizable()
            } placeholder: {
                Color.white.opacity(0.2)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .frame(width: 150, height: 150)
            
          
            
            VStack(alignment: .leading, content: {
                Text(track.name)
                    .bold()
                    .font(.title)
                Text(track.artist)
                    .font(.subheadline)
            })
           
        }
        
        .padding(12)

    }
    
}

#Preview(windowStyle: .automatic) {
    CardDetail(
        track: Track( name: "Ai Mà Biết Được (feat. tlinh)", artist: "SOOBIN, tlinh" ,imageCover:  "https://bloganchoi.com/wp-content/uploads/2024/06/lyrics-ai-ma-biet-duoc-soobin-tlinh-2-696x696.jpg"
                    
                    
                    )
    )
}
