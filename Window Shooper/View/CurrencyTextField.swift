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

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2 - size / 2), width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.9035838246, green: 0.8970522285, blue: 0.9085847735, alpha: 0.8001760563)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.1195797846, green: 0.1196073666, blue: 0.1195761189, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
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
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p,
                                       attributes: [.foregroundColor: #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
