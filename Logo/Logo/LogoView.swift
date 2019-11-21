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
    
    //MARK: - Properties
    private let lambdaRed = UIColor(red: 187/255, green: 19/255, blue: 52/255, alpha: 1)
    private let lambdaWhite = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)

    private let heightOffSet: CGFloat = 70.0
    private let insideHeight: CGFloat = 25.0
    private let insideWidth: CGFloat = 7.0
    
    //MARK: - Draw
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
    
            //MARK: - Starting Rectangle
            let mainRect = CGRect(x: rect.origin.x,
                                   y: rect.origin.y,
                                   width: rect.size.width,
                                   height: rect.size.height - heightOffSet)
            
            context.beginPath()
            let mainRectPath = CGPath(roundedRect: mainRect,
                                         cornerWidth: 5.0,
                                         cornerHeight: 5.0,
                                         transform: nil)
            
            context.addPath(mainRectPath)
            context.setFillColor(lambdaRed.cgColor)
            context.fillPath()
            context.closePath()
            
            let squareCenter = CGPoint(x: rect.size.width / 2.0,
                                       y: (rect.size.height - heightOffSet) / 2.0)
            
            //MARK: - Triangle on Bottom
            let roundOffSet: CGFloat = 4.0
            
            context.beginPath()
            context.move(to: CGPoint(x: rect.origin.x + roundOffSet,
                                     y: rect.size.height - heightOffSet))
            
            context.addLine(to: CGPoint(x: squareCenter.x - roundOffSet,
                                        y: (rect.size.height - heightOffSet) + heightOffSet - roundOffSet))
            
            context.addQuadCurve(to: CGPoint(x: squareCenter.x + roundOffSet,
                                               y: (rect.size.height - heightOffSet) + heightOffSet - roundOffSet),
                                   control: CGPoint(x: squareCenter.x,
                                                    y: (rect.size.height - heightOffSet) + heightOffSet))
            
            context.addLine(to: CGPoint(x: rect.size.width - roundOffSet,
                                        y: rect.size.height - heightOffSet))
            
            context.closePath()
            context.setFillColor(lambdaRed.cgColor)
            context.fillPath()
            
            //MARK: - Inside Pattern
            context.beginPath()
            context.move(to: CGPoint(x: squareCenter.x,
                                     y: squareCenter.y + insideWidth))
            context.addLine(to: CGPoint(x: squareCenter.x - insideWidth * 3.5,
                                        y: squareCenter.y + insideHeight * 2))
            context.addLine(to: CGPoint(x: squareCenter.x - insideWidth * 7,
                                        y: squareCenter.y + insideHeight * 2))
            context.addLine(to: CGPoint(x: squareCenter.x - insideWidth * 1.25,
                                        y: squareCenter.y - insideHeight))
            context.addLine(to: CGPoint(x: squareCenter.x + insideWidth * 1.25,
                                        y: squareCenter.y - insideHeight))
            context.addLine(to: CGPoint(x: squareCenter.x + insideWidth * 7,
                                        y: squareCenter.y + insideHeight * 2))
            context.addLine(to: CGPoint(x: squareCenter.x + insideWidth * 3.5,
                                        y: squareCenter.y + insideHeight * 2))
            
            context.closePath()
            context.setFillColor(lambdaWhite.cgColor)
            context.fillPath()
        }
    }
}
