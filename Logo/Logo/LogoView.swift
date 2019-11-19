//
//  LogoView.swift
//  Logo
//
//  Created by Blake Andrew Price on 11/19/19.
//  Copyright © 2019 Blake Andrew Price. All rights reserved.
//

import UIKit

@IBDesignable
class LogoView: UIView {
    private let lambdaRed = UIColor.red
    private let lambdaWhite = UIColor.white

    private let heightOffSet: CGFloat = 70.0
    private let logoHeightSize: CGFloat = 30.0
    private let logoWidthSize: CGFloat = 10.0

    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            let mainRect = CGRect(x: rect.origin.x,
                                   y: rect.origin.y,
                                   width: rect.size.width,
                                   height: rect.size.height - heightOffSet)
            context.beginPath()
            let mainRectPath = CGPath(roundedRect: mainRect,
                                         cornerWidth: 0.0,
                                         cornerHeight: 0.0,
                                         transform: nil)
            
            context.addPath(mainRectPath)
            context.setFillColor(lambdaRed.cgColor)
            context.fillPath()
            context.closePath()
            
            let squareCenter = CGPoint(x: rect.size.width / 2.0,
                                       y: (rect.size.height - heightOffSet) / 2.0)
        }
    }
}
