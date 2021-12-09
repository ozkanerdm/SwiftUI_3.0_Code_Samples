//
//  AsyncImageView.swift
//  Prepared for the SwiftUI 3.0 Article
//
//  Created by Ozkan Erdem.
//

import SwiftUI

struct AsyncImageView: View {
    
    var body: some View {
        NavigationView{
            VStack{
                AsyncImage(url: URL(string:"https://source.unsplash.com/random"), scale: 2.0){ phase in
                    if let image = phase.image{
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 400, height: 400)
                            .cornerRadius(20)
                    } else if phase.error != nil {
                        Text("Unable to load the image.")
                    } else {
                        Image(systemName: "photo")
                            .imageScale(.large)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Async Image View")
        }
        
    }
}

struct AsyncImageView_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageView()
    }
}
