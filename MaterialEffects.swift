//
//  MaterialEffects.swift
//  Prepared for the SwiftUI 3.0 Article
//
//  Created by Ozkan Erdem.
//

import SwiftUI

struct MaterialEffects: View {
    var body: some View {
        VStack{
            ZStack{
                Color.orange
                Label("SwiftUI 3.0", systemImage: "swift")
                    .padding()
            }
            ZStack{
                Color.orange
                Label("SwiftUI 3.0", systemImage: "swift")
                    .padding()
                    .background(.ultraThinMaterial)
            }
            ZStack{
                Color.orange
                Label("SwiftUI 3.0", systemImage: "swift")
                    .padding()
                    .background(.thinMaterial)
            }
            ZStack{
                Color.orange
                Label("SwiftUI 3.0", systemImage: "swift")
                    .padding()
                    .background(.regularMaterial)
            }
            ZStack{
                Color.orange
                Label("SwiftUI 3.0", systemImage: "swift")
                    .padding()
                    .background(.thickMaterial)
            }
            ZStack{
                Color.orange
                Label("SwiftUI 3.0", systemImage: "swift")
                    .padding()
                    .background(.ultraThickMaterial)
            }
        }
    }
}

struct MaterialEffects_Previews: PreviewProvider {
    static var previews: some View {
        MaterialEffects()
    }
}



