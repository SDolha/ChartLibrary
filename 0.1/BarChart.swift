import SwiftUI

public typealias ChartItem = (label: String, value: Double)
public struct BarChart: View {
    public init(_ items: [ChartItem]) {
        self.items = items
    }
    let items: [ChartItem]
    public var body: some View {
        HStack {
            ForEach(items, id: \.label) { label, value in
                VStack {
                    Text(label)
                    Text(String(value))
                }
            }
        }
    }
}
