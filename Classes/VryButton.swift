//
//  VryButton.swift
//  VryPod
//
//  Created by Ryan Raj on 2/22/22.
//

import UIKit
import SnapKit

public enum VButtonStyle {
    case filled, text
}

public enum VButtonType {
    case primary, secondary, cancel, delete
}


open class VryButton: UIButton {
    // MARK: Inits
    public init(_ text: String?,
         style: VButtonStyle = .filled,
         type: VButtonType = .primary) {
        self.style = style
        self.type = type
        
        super.init(frame: .zero)

        setTitle(text, for: .normal)
        
        setup()
    }
    required public init?(coder: NSCoder) { return nil }

    private func setup() {
        configureButton()
    }
    
    private var style: VButtonStyle
    private var type: VButtonType
//    private var textColor: LabelColor
    
    
    public func setBackgroundColor(color: UIColor, forState: UIControl.State) {
            self.clipsToBounds = true  // add this to maintain corner radius
            UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
            if let context = UIGraphicsGetCurrentContext() {
                context.setFillColor(color.cgColor)
                context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
                let colorImage = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                self.setBackgroundImage(colorImage, for: forState)
            }
        }
    
    private func configureButton() {
        self.snp.makeConstraints {
            $0.height.equalTo(50)
        }
        self.clipsToBounds = true
        
        
        switch style {
            case .filled:break
//                applyContainedTheme(withScheme: Material.shared.container)
            case .text: break
//                applyTextTheme(withScheme: Material.shared.container)
        }

//        if style == .filled {
//            switch type {
//                case .primary:
//                    setBackgroundColor(
//                        VBlue.normal.color,
//                        for: .normal
//                    )
//                case .secondary:
//                    setBackgroundColor(
//                        VPurple.normal.color,
//                        for: .normal
//                    )
//                case .cancel:
//                    setBackgroundColor(
//                        VGrey.normal.color,
//                        for: .normal
//                    )
//                case .delete:
//                    setBackgroundColor(
//                        VRed.normal.color,
//                        for: .normal
//                    )
//            }
//        }

        if style == .text {
//            setBackgroundColor(.clear, for: .disabled)
        }

        //custom disabled state
//        setTitleColor(textColor.color, for: .normal)
//        setTitleColor(textColor.color.withAlphaComponent(0.75), for: .disabled)
//
//        minimumSize = CGSize(width: 64, height: 40)
    }
}
