//
//  SwipeAction.swift
//  Prepared for the SwiftUI 3.0 Article
//
//  Created by Ozkan Erdem.
//

import SwiftUI

struct Car: Identifiable {
    var id = UUID()
    var model : String
}

struct SwipeAction: View {
    
    @State private var showingAlert = false
    @State private var cars:[Car] = [ Car(model: "Volvo"),Car(model: "BMW"),Car(model: "Mercedes"),Car(model: "Audi"),Car(model: "Tesla")]

    var body: some View {
        NavigationView {
            List {
                ForEach($cars) { $car in
                    Text(car.model)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button(role: .destructive) {
                                withAnimation {
                                    cars.removeAll { car.id == $0.id }
                                }
                                self.showingAlert = true
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                        .alert("Warning!!!", isPresented: $showingAlert, actions: {
                            Button("Ok", role: .cancel, action: {})
                        }, message: {
                            Text("Selected car was deleted.")
                        })
                }
                .navigationTitle("Car Models")
            }
        }
        
    }
}

struct SwipeAction_Previews: PreviewProvider {
    static var previews: some View {
        SwipeAction()
    }
}
