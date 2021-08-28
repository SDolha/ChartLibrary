//
//  ContentView.swift
//  Shared
//
//  Created by Sorin Dolha on 26.08.2021.
//

import SwiftUI
import ChartLibrary

struct ContentView: View {
    var body: some View {
        BarChart([(label: "A", value: 2.5), (label: "B", value: 4), (label: "C", value: 2)])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
