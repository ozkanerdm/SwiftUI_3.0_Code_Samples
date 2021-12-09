//
//  BadgeView.swift
//  Prepared for the SwiftUI 3.0 Article
//
//  Created by Ozkan Erdem.
//

import SwiftUI

struct BadgeView: View {
    
    @State private var hasMsgSeen = false
    
    var body: some View {
        TabView{
            Color.orange
                .tabItem{
                    Image(systemName: "house.fill")
                }
                .badge("New")
            Color.red
                .onAppear(perform: {
                    hasMsgSeen = true
                })
                .tabItem{
                    Image(systemName: "message.circle.fill")
                }
                .badge(hasMsgSeen ? 0 : 123)
            Color.green
                .onAppear(perform: {
                    hasMsgSeen = false
                })
                .tabItem{
                    Image(systemName: "gear.circle.fill")
                }
        }
    }
}

struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
