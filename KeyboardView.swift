//
//  KeyboardImprovmentsView.swift
//  Prepared for the SwiftUI 3.0 Article
//
//  Created by Ozkan Erdem.
//

import SwiftUI

struct KeyboardView: View {
    
    @State private var name = ""
    @FocusState var isInputActive: Bool

        var body: some View {
            NavigationView {
                        TextField("Enter your name", text: $name)
                            .textFieldStyle(.roundedBorder)
                            .focused($isInputActive)
                            .toolbar {
                                ToolbarItemGroup(placement: .keyboard) {
                                    Spacer()
                                    Button("Done") {
                                        isInputActive = false
                                    }
                                }
                            }
                    }
        }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
