//
//  CustomTextField.swift
//  TestLib
//
//  Created by Kittinun Chobtham on 31/5/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import UIKit

@IBDesignable
open class CustomTextField: UITextField {
    
    public override init(frame: CGRect) {
         super.init(frame: frame)
     }
     
     public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable
    public var placeholderColor: UIColor = UIColor.gray {
        didSet {
            let placeholderText = placeholder != nil ? placeholder! : ""
        
            attributedPlaceholder =
                NSAttributedString(string: placeholderText,
                                   attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
        }
    }
}
