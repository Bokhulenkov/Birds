//
//  Utilities.swift
//  Birds
//
//  Created by Alexander Bokhulenkov on 23.02.2024.
//

import UIKit

 class Utilities {
    
    func inputContainerView(withImage image: UIImage, textField: UITextField) -> UIView {
        let view = UIView()
        let iv = UIImageView()
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        iv.image = image
        
        view.addSubview(iv)
        
        iv.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, paddingLeft: 8, paddingBottom: 8)
        iv.setDimensions(width: 24, height: 24)
        
        view.addSubview(textField)
        textField.anchor(left: iv.rightAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingLeft: 8, paddingBottom: 8)

        let dividerView = UIView()
        dividerView.backgroundColor = .white
        view.addSubview(dividerView)
        dividerView.anchor(left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor,height: 0.75)
        
        
        return view
    }
     
     func textField(withPlaceholder placeholder: String) -> UITextField {
         let tf = UITextField()
         tf.font = .systemFont(ofSize: 16)
         tf.textColor = .white
         tf.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
         return tf
     }
}
