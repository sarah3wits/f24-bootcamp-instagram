//
//  PostView.swift
//  iOS_Instagram_demo
//
//  Created by Sarah Threewits on 9/17/24.
//

import SwiftUI

struct PostView: View {
    
    @State private var likeCount = 0
    @State private var bookmarked = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                Image("me")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30)
                    .clipShape(Circle())
                Text("Sarah3wits")
                    .font(.subheadline)
                    .bold()
                Spacer()
                Image(systemName: "ellipsis")
            }
            
            .padding(.horizontal)
            Image("cat")
                .resizable()
                .scaledToFit()
            // button ****
            HStack {
                Button {
                    if likeCount > 0 {
                        likeCount -= 1
                    } else {
                        likeCount += 1
                    }
                }
                
            label: {
                    Image(systemName: likeCount > 0 ? "heart.fill" : "heart")
                        .foregroundColor(likeCount > 0 ? .red : nil)
            }
            .buttonStyle(.plain)
                Text("\(likeCount)")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Image(systemName: "message")
                Text("0")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Image(systemName: "paperplane")
                Spacer()
                
                Button {
                    bookmarked = !bookmarked
                }
            label: {
                    Image(systemName: bookmarked ? "bookmark.fill" : "bookmark")
                        .foregroundColor(bookmarked ? .black: nil)
                }
                .buttonStyle(.plain)
            }
            
            .padding(.horizontal)
            
            
            Text("Look at this greedy cat.")
                .padding(.horizontal)
        }
    }
}

#Preview {
    PostView()
}
