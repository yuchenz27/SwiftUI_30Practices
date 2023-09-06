//
//  VideoDetailView.swift
//  Practice02_VideoList
//
//  Created by Yuchen Zhang on 2023/9/6.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    
    var body: some View {
        VStack(spacing: 10) {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(video.description)
                .font(.body)
                .lineLimit(10)
                .padding()
            
            Spacer()
            
            Link(destination: video.url) {
                Text("Watch Now")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            }
        }
    }
}

#Preview {
    VideoDetailView(video: VideoList.topTen.first!)
}
