import SwiftUI

struct FortuneWheel2View: View {
    
    @ObservedObject var viewModel: FortuneWheel2ViewModel
    var body: some View {
        GeometryReader { geometry in
            ScrollView{
                VStack{
                    ZStack {
                        // Background Image (spinBG1)
                        Image(spin.img_spinBG1.rawValue)
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
                        
                        // Bottom Foreground Image (spinBG2)
                        Image(spin.img_spinBG2.rawValue)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height / 2)
                            .position(x: geometry.size.width / 2, y: geometry.size.height - (geometry.size.height / 3))
                            .clipped()
                        
                        
                        // Gift Box Image
                        Image(spin.img_giftbox.rawValue)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.9) // 60% of the screen width
                            .position(x: geometry.size.width / 2, y: geometry.size.height * 0.2) // Adjust position
                        
                        // "Spin to Win" Text/Image
                        Image(spin.img_SW.rawValue)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1) // 80% width, 10% height
                            .position(x: geometry.size.width / 2, y: geometry.size.height * 0.42)
                        
                        // Spin Wheel Image
                        
                        Image(spin.img_spinWheel.rawValue)
                            .resizable()
                            .scaledToFit()
                            .rotationEffect(.degrees(viewModel.rotation), anchor: .center)
                            .animation(.easeInOut(duration: 1), value: viewModel.rotation)
                            .frame(width: geometry.size.width)
                            .position(x: geometry.size.width / 2, y: geometry.size.height * 0.70)
                        
                        // Pin Image
                        Image(spin.img_pin.rawValue)
                            .resizable()
                            .scaledToFit()
                            .frame(width: geometry.size.width * 0.09, height: geometry.size.height * 0.06) // Scale pin size relative to screen
                            .position(x: geometry.size.width / 2, y: geometry.size.height * 0.48) // Position pin above the wheel
                        VStack{
                            CommonButton(title: Buttons.btnSpin, action:  viewModel.onTapSpin)
                            
                            CommonButton(title: Buttons.btnCancel, action: viewModel.onTapCancel, backgroundColor: .clear, textColor: Color(UIColor.appclr0A195C))
                            
                        }
                        .position(x: geometry.size.width / 2, y: geometry.size.height * 1.02)
                        .padding(.top, 25)
                     
                    }
                    Spacer(minLength: 10)
                        .frame(minHeight: geometry.size.height * 0.2)
                }
            } .scrollIndicators(.hidden)
            .ignoresSafeArea(edges: .all)
        }
    }
}

#Preview {
    let fortuneWheel2Model = FortuneWheel2Model()
    let viewModel = FortuneWheel2ViewModel(fortuneWheel2: fortuneWheel2Model)
    
    return FortuneWheel2View(viewModel: viewModel)
}
