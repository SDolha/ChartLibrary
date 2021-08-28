import SwiftUI

public struct BarChart: View {
    public init(_ items: [ChartItem]) {
        self.items = items
    }
    let items: [ChartItem]
    public var body: some View {
        let maxValue = items.map { item in item.value }.max()
        HStack {
            ForEach(items, id: \.label) { label, value in
                item(label: label, value: value, fraction: value / maxValue!)
            }
        }
    }
    func item(label: String, value: Double, fraction: Double) -> some View {
        VStack {
            Text(label).bold()
            Text(String(value)).foregroundColor(.blue)
            GeometryReader { geometry in
                Rectangle()
                    .fill(Color.blue)
                    .frame(height: CGFloat(fraction) * geometry.size.height)
            }
        }
    }
}
