//
//  ButtonView.swift
//  MediumApp
//
//  Created by Ozkan Erdem on 9.12.2021.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        NavigationView{
            VStack {
                Button("Delete", role: .destructive,action: {})
                    .buttonStyle(BorderedButtonStyle())
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
                
                Button("Cancel", role: .cancel, action: {})
                    .buttonStyle(.borderless)
                    .controlSize(.small)
                    .buttonBorderShape(.capsule)
                
                Button("None", role: .none, action: {})
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
                
                Button("Destructive Button", role: .destructive, action: {})
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
                
                Button("No Role", action: {})
                    .buttonStyle(.plain)
                    .controlSize(.large)
                    .buttonBorderShape(.capsule)
            }
            .navigationTitle("New Button Styles")
        }
        
    }
}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}


 
