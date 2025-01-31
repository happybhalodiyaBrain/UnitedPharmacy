import SwiftUI

struct CommonButton: View {
    // MARK: - Properties
    let title: String
    let action: () -> Void
    var backgroundColor: Color = Color(UIColor.appclr0A195C)
    var textColor: Color = Color(UIColor.appclrFFFFFF)
    var cornerRadius: CGFloat = 8
    var horizontalPadding: CGFloat = 16
    var verticalPadding: CGFloat = 10
    var borderColor: Color = .clear
    var borderWidth: CGFloat = 0
    var height: CGFloat = 40

    // MARK: - Body
    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .textStyle(size: 16, color: textColor, fontName: FontConstant.Almarai_Bold)
                .frame(maxWidth: .infinity) // Ensures full width
                .frame(height: height) // Ensures height
                .padding(.vertical, verticalPadding) 
                .background(backgroundColor) // Background applied to whole button
                .cornerRadius(cornerRadius)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(borderColor, lineWidth: borderWidth)
                )
        }
        .padding(.horizontal, horizontalPadding) // Outer padding
    }
}
#Preview {
    CommonButton(title: "button", action: {}, backgroundColor: .blue, textColor: .white, cornerRadius: 8, horizontalPadding: 83, verticalPadding: 0, borderColor: .blue, borderWidth: 1, height: 55)
}
