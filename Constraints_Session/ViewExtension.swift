//
//  ViewExtension.swift
//  Constraints_Session
//
//  Created by Aravindhan Natarajan on 05/05/21.
//

import Foundation
import UIKit

extension UIView {
    
    func pin(leading: NSLayoutXAxisAnchor? , trialling: NSLayoutXAxisAnchor? , top: NSLayoutYAxisAnchor? , bottom: NSLayoutYAxisAnchor? , padding: UIEdgeInsets , size: CGSize) {
        self.translatesAutoresizingMaskIntoConstraints = false
        if let leading = leading {
            self.leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trialling = trialling {
            self.trailingAnchor.constraint(equalTo: trialling, constant: padding.right).isActive = true
        }
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: padding.bottom).isActive = true
        }
        
        if size.width != .zero {
            self.widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != .zero {
            self.heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
}
