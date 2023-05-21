//
//  CustomTextFieild.swift
//  LeboPro
//
//  Created by Семён Кривцов on 20.05.2023.
//

import UIKit

class CustomTextFieild: UITextField {

    init(textColor: UIColor,
         textAlignment: NSTextAlignment,
         placeholder: String,
         isSecureTextEntry: Bool,
         returnKeyType: UIReturnKeyType) {
        let frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        super.init(frame: frame)
        backgroundColor = .white
        enablesReturnKeyAutomatically = true
        autocorrectionType = .no
        spellCheckingType = .no
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.placeholder = placeholder
        self.borderStyle = .roundedRect
        self.isSecureTextEntry = isSecureTextEntry
        self.returnKeyType = returnKeyType
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
