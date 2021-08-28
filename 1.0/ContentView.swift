//
//  ContentView.swift
//  Shared
//
//  Created by Sorin Dolha on 26.08.2021.
//

import SwiftUI
import ChartLibrary

struct ContentView: View {
    let items = [(label: "A", value: 2.5), (label: "B", value: 4), (label: "C", value: 2)]
    var body: some View {
        VStack {
            BarChart(items)
            BubbleChart(items)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
