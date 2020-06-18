//
//  CurrencyTextField.swift
//  Window Shooper
//
//  Created by Алексей Шумейко on 18.06.2020.
//  Copyright © 2020 Алексей Шумейко. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2499174736)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                       attributes: [.foregroundColor: #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
