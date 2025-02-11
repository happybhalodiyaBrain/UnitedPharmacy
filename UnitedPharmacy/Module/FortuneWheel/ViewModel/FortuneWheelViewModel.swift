import Foundation
import UIKit
import SwiftUI

// MARK: - Partner Redeem ViewModel
class FortuneWheelViewModel: ObservableObject {
    
    // MARK: - Published Properties
    /// The model representing the Fortune Wheel.
    @Published var fortuneWheel: FortuneWheelModel
    /// The current rotation angle of the wheel.
    @Published var rotation: CGFloat = 0.0
    /// Indicates whether the wheel is currently spinning.
    @Published var isSpinning = false
    /// The label of the selected segment.
    @Published var selectedSegment: String = ""
    /// Controls the visibility of the alert.
    @Published var isShowAlert = false
    /// The type of the alert to be displayed.
    @Published var alertType: String = "Won"
    /// The height of the alert sheet.
    @State  var sheetHeight: CGFloat = .zero
    
    /// The segments of the Fortune Wheel.
    @State  var segments: [Segment] = [
        Segment(label: "50%", color:  Color(UIColor.appclrE87D24)),
        Segment(label: "10%", color:  Color(UIColor.appclr129E8B)),
        Segment(label: "20%", color:  Color(UIColor.appclr297FB8)),
        Segment(label: "30%", color:  Color(UIColor.appclr884A9D)),
        Segment(label: "40%", color:  Color(UIColor.appclrE14E3E))
    ]
    
    // MARK: - Initializer
    
    /// Initializes the ViewModel with a given FortuneWheelModel.
    /// - Parameter fortuneWheel: The model representing the Fortune Wheel.
    init(fortuneWheel: FortuneWheelModel) {
        self.fortuneWheel = fortuneWheel
    }
    // MARK: - Public Methods
    
    /// Initiates the spinning of the wheel.
    func spinWheel() {
        isSpinning = true
        
        // Perform the spin: Add multiple rotations (3-5 full spins) plus a random offset
        let fullRotations = Double.random(in: 3...5) * 360 // Full spins
        let randomOffset = Double.random(in: 0..<360) // Random stopping position
        rotation += fullRotations + randomOffset // Update rotation state
        
        // Normalize the rotation to a value between 0 and 360
        let normalizedRotation = rotation.truncatingRemainder(dividingBy: 360)
        
        // Calculate the segment angle and adjust for pointer position
        let segmentAngle = 360.0 / Double(segments.count) // Angle per segment
        let pointerAngle = 0.0 // Adjust based on pointer's position (0° for top-center)
        let adjustedRotation = (normalizedRotation + pointerAngle).truncatingRemainder(dividingBy: 360)
        
        // Determine the index of the segment where the pointer stops
        let selectedIndex = Int((360.0 - adjustedRotation).truncatingRemainder(dividingBy: 360) / segmentAngle) % segments.count
        
        // Update selected segment
        selectedSegment = segments[selectedIndex].label
        print("Selected Segment: \(selectedSegment)")
        
        // Trigger alert after animation completes
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            self.isSpinning = false
            self.isShowAlert = true
        }
    }
    /// Closes the alert.
    func closeAlert () {
        isShowAlert = false
    }
    /// Handles the cancel action.
    func onTapCancle () {
        
    }
}

