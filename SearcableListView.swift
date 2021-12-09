//
//  SearcableList.swift
//  Prepared for the SwiftUI 3.0 Article
//
//  Created by Ozkan Erdem.
//

import SwiftUI

struct SearcableListView: View {
    @State private var query = ""
    @State private var cars = ["Volvo","BMW","Mercedes","Audi","Tesla","Ferrari"]

    var body: some View {
            NavigationView {
                List {
                    ForEach(searchResults, id: \.self) { car in
                        Text(car)
                    }
                }
                .searchable(text: $query)
                .navigationTitle("Car Model")
            }
        }

        var searchResults: [String] {
            if query.isEmpty {
                return cars
            } else {
                return cars.filter { $0.localizedCaseInsensitiveContains(query)}
            }
        }
}

struct SearcableListView_Previews: PreviewProvider {
    static var previews: some View {
        SearcableListView()
    }
}
