//
//  RoundView.swift
//  TestLib
//
//  Created by Kittinun Chobtham on 31/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

@IBDesignable
open class RoundView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    open override func layoutSubviews() {
        if isCircleView {
            layer.cornerRadius = frame.height / 2
            layer.borderColor = borderColor.cgColor
            layer.borderWidth = 0.5
            layer.masksToBounds = true
        }
    }
    
    @IBInspectable
    public var isCircleView: Bool = false
    
    @IBInspectable
    public var cornerRadius: CGFloat = 15.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable
    public var borderColor: UIColor = UIColor.black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
}
