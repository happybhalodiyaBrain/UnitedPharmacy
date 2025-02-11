import SwiftUI

struct FortuneWheelView: View {
    @ObservedObject var viewModel: FortuneWheelViewModel
    
    var body: some View {
        ScrollView{
            VStack{
                // MARK: - Background Image
                ZStack{
                    Image(spin.img_fortuneWheel.rawValue)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .clipped()
                }
                // MARK: - Wheel Base and Segments
                ZStack {
                    // Wheel Base
                    ForEach(0..<viewModel.segments.count) { index in
                        SegmentView(segment: viewModel.segments[index], segmentList: viewModel.segments )
                            .rotationEffect(.degrees(Double(index) * (360.0 / Double(viewModel.segments.count))))
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
                }
                .frame(width: 250, height: 250)
                .rotationEffect(Angle(degrees: viewModel.rotation))
                .animation(.easeOut(duration: viewModel.isSpinning ? 4 : 0), value: viewModel.rotation)
                // MARK: - Spin Pin

                Image(spin.img_spinPin.rawValue)
                    .resizable()
                    .frame(width: 30, height: 48)
                    .offset(y: -310)
                
                // MARK: - Spin Button
                VStack{
                    CommonButton(title: Buttons.btnSpin, action: { viewModel.spinWheel() })
                
                // MARK: - Cancel Button
                    CommonButton(title: Buttons.btnCancel, action: viewModel.onTapCancle, backgroundColor: .clear, textColor: Color(UIColor.appclr0A195C))
                }.padding(.top, 5)
                
                Spacer()
                
                
            }.ignoresSafeArea()
                .background(Color(UIColor.appclrEFF9FF))
                .sheet(isPresented: $viewModel.isShowAlert) {
                    // MARK: - Alert Views
                    switch viewModel.alertType {
                    case spinValue.betterLuckAlert:
                        CustomAlertView(
                            emoji: "😊",
                            title: spinValue.sorry,
                            message: spinValue.betterLuck,
                            subtitle: spinValue.nextTime,
                            buttonText: Buttons.btnOk,
                            alertView: .betterLuck
                        ) {
                            viewModel.closeAlert()
                        }
                        .onPreferenceChange(InnerHeightPreferenceKey.self) { newHeight in
                            viewModel.sheetHeight = newHeight
                        }
                        .presentationDetents([.height(viewModel.sheetHeight)])
                        .cornerRadius(24)
                    case spinValue.TryAgainAlert:
                        CustomAlertView(
                            emoji: "😊",
                            title: spinValue.opps,
                            message: spinValue.tryAgain,
                            subtitle: "",
                            buttonText: Buttons.btnTryAgain,
                            alertView: .lost
                        ) {
                            viewModel.closeAlert()
                        }
                        .onPreferenceChange(InnerHeightPreferenceKey.self) { newHeight in
                            viewModel.sheetHeight = newHeight
                        }
                        .presentationDetents([.height(viewModel.sheetHeight)])
                        
                    case spinValue.wonAlert :
                        CustomAlertView(
                            emoji: "😊",
                            title: "",
                            message: "",
                            subtitle: viewModel.selectedSegment,
                            buttonText: Buttons.btnViewDetails,
                            alertView: .won
                        ) {
                            viewModel.closeAlert()
                        }
                        .onPreferenceChange(InnerHeightPreferenceKey.self) { newHeight in
                            viewModel.sheetHeight = newHeight
                        }
                        .presentationDetents([.height(550)])
                    default:
                        EmptyView()
                    }
                }
            
            
            
        }.frame(minHeight: UIScreen.main.bounds.height )
            .scrollIndicators(.hidden)
            .ignoresSafeArea()
    }
}

/// A preference key to track the height of the alert view.
struct InnerHeightPreferenceKey: PreferenceKey {
    static let defaultValue: CGFloat = .zero
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

#Preview {
    let fortuneWheelModel = FortuneWheelModel()
    let viewModel = FortuneWheelViewModel(fortuneWheel: fortuneWheelModel)
    
    return FortuneWheelView(viewModel: viewModel)
    
}
