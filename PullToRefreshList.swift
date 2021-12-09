//
//  PullToRefreshList.swift
//  Prepared for the SwiftUI 3.0 Medium Article
//
//  Created by Ozkan Erdem.
//

import SwiftUI

struct Cars: Identifiable {
    var id = UUID()
    var name : String
}

struct PullToRefreshList: View {
    @State private var cars:[Cars] = [ Cars(name: "Volvo"),Cars(name: "BMW"),Cars(name: "Mercedes"),Cars(name: "Audi"),Cars(name: "Tesla")]

    var body: some View {
        NavigationView {
            List($cars){ $car in
                VStack(alignment: .leading) {
                    Text(car.name)
                        .font(.headline)
                }
            }
            .refreshable {
                self.cars.append(Cars(name: "Nem Car Model Added!"))
            }
            .navigationTitle("Car Models")
        }
    }
}

struct PullToRefreshList_Previews: PreviewProvider {
    static var previews: some View {
        PullToRefreshList()
    }
}
