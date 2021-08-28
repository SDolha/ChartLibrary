import SwiftUI

public struct BubbleChart: View {
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
        GeometryReader { geometry in
            let minLength = min(geometry.size.width, geometry.size.height)
            ZStack {
                Circle()
                    .fill(Color.orange)
                    .frame(height: CGFloat(fraction) * minLength, alignment: .center)
                VStack {
                    Text(label).bold()
                    Text(String(value))
                }.foregroundColor(.white)
            }.frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
