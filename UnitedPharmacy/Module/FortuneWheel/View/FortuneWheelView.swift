import SwiftUI

struct FortuneWheelView: View {
    @ObservedObject var viewModel: FortuneWheelViewModel
    @State var rotation: CGFloat = 0.0
    
    
    var body: some View {
        VStack{
            ZStack{
                Image(spin.img_fortuneWheel.rawValue)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: 376)
                    .clipped()
                
            }
            
            ZStack {
                // Wheel Base
                ForEach(0..<5) { index in
                    SegmentView(index: index)
                        .rotationEffect(Angle(degrees: Double(index) * 72)) // Rotate each segment
                }.overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 10)
                )
                
                // Central Button
                Circle()
                    .fill(Color.red)
                    .frame(width: 55, height: 55)
                    .overlay(
                        Circle()
                            .stroke(Color.white, lineWidth: 8)
                    )
                
                Image(spin.img_spinPin.rawValue)
                    .resizable()
                    .frame(width: 30, height: 48)
                    .offset(y: -145)
                
            }
            .frame(width: 250, height: 250)
            .rotationEffect(Angle(degrees: rotation)) // Apply rotation to spin the wheel
            .animation(.easeOut(duration: 2), value: rotation) // Add animation
            VStack{
                CommonButton(title: Buttons.btnSpin, action: {})
            }.padding(.top, 50)
            
            VStack{
                CommonButton(title: Buttons.btnCancel, action: {}, backgroundColor: .clear, textColor: Color(UIColor.appclr0A195C))
            }.padding(.top, 5)
            Spacer()
            
            
        }.ignoresSafeArea()
            .background(Color(UIColor.appclrEFF9FF))
    }
    
}

// MARK: - Segment View
struct SegmentView: View {
    let index: Int
    let colors: [Color] = [
        Color(UIColor.appclrE87D24),
        Color(UIColor.appclr129E8B),
        Color(UIColor.appclr297FB8),
        Color(UIColor.appclr884A9D),
        Color(UIColor.appclrE14E3E)]
    let labels: [String] = ["50%", "10%", "20%", "30%", "40%"]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Segment Shape
                Path { path in
                    let rect = geometry.size
                    let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
                    path.move(to: center)
                    path.addArc(
                        center: center,
                        radius: rect.width / 2,
                        startAngle: .degrees(0),
                        endAngle: .degrees(72),
                        clockwise: false
                    )
                }
                .fill(colors[index])
                
                VStack{
                    // Segment Label
                    Text(labels[index])
                        .textStyle(size: 26, color: Color(UIColor.appclrFFFFFF),
                                   fontName: FontConstant.Almarai_Bold)
                        .offset(x: -geometry.size.width / 9, y: -geometry.size.width / 4)
                    Text("OFF")
                        .textStyle(size: 20, color: Color(UIColor.appclrFFFFFF),
                                   fontName: FontConstant.Almarai_Bold)
                        .offset(x: -geometry.size.width / 9, y: -geometry.size.width / 4)
                }
                .rotationEffect(.degrees(149))
            }
        }
        .frame(width: 310, height: 310)
        .rotationEffect(.degrees(-55)) // Center the text properly
        
    }
    
}


#Preview {
    let fortuneWheelModel = FortuneWheelModel()
    let viewModel = FortuneWheelViewModel(fortuneWheel: fortuneWheelModel)
    
    return FortuneWheelView(viewModel: viewModel)
    
}
