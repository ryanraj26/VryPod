//
//  UIImage+Vry.swift
//  VryPod
//
//  Created by Ryan Raj on 3/2/22.
//

import Foundation
import UIKit

extension UIImage {
    func aspectFitImage(inSize size: CGSize, fillColor: VColor? = nil) -> UIImage? {
        let width = self.size.width
        let height = self.size.height
        let aspectWidth = size.width / width
        let aspectHeight = size.height / height
        let scaleFactor = aspectWidth > aspectHeight ? size.height / height : size.width / width

        UIGraphicsBeginImageContextWithOptions(CGSize(width: width * scaleFactor, height: height * scaleFactor), false, 0.0)
        if let color = fillColor {
            UIGraphicsGetCurrentContext()?.setFillColor(color.color.cgColor)
        }
        self.draw(in: CGRect(x: 0.0, y: 0.0, width: width * scaleFactor, height: height * scaleFactor))

        defer {
            UIGraphicsEndImageContext()
        }

        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
