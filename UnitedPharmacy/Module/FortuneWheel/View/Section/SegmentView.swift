//
//  SegmentView.swift
//  UnitedPharmacy
//
//  Created by Happy  Bhalodiya on 04/02/25.
//

import SwiftUI

struct SegmentView: View {
    let segment: Segment
    let segmentList : [Segment]

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                let segmentAngle = 360.0 / Double(segmentList.count)
                // Segment Shape
                Path { path in
                    let rect = geometry.size
                    let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
                    path.move(to: center)
                    path.addArc(
                        center: center,
                        radius: rect.width / 2,
                        startAngle: .degrees(0),
                        endAngle: .degrees(segmentAngle),
                        clockwise: false
                    )
                }
                .fill(segment.color)
                
                VStack{
                    // Segment Label
                    Text(segment.label)
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

