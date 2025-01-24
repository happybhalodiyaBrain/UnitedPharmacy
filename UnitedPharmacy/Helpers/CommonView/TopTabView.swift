import SwiftUI

struct TopTabView: View {
    @Binding var selectedTab: Int
    let tabs: [String]
    let activeColor: Color
    let inactiveColor: Color
    let fontName: String
    let fontSize: CGFloat
    
    var body: some View {
        HStack {
            ForEach(tabs.indices, id: \.self) { index in
                Button(action: {
                    selectedTab = index
                }) {
                    VStack(spacing: 11) {
                        Text(tabs[index])
                            .textStyle(size: fontSize,
                                       color: selectedTab == index ? activeColor : inactiveColor,
                                       fontName: fontName)
                        
                        Rectangle()
                            .fill(selectedTab == index ? activeColor : inactiveColor)
                            .frame(height: 1)
                    }
                }
                .frame(maxWidth: .infinity) // Distribute buttons evenly
            }
        }
        .padding(.vertical, 11)
    }
}
