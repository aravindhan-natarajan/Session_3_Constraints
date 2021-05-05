//
//  ViewController+Extension.swift
//  Constraints_Session
//
//  Created by Aravindhan Natarajan on 05/05/21.
//

import Foundation
import UIKit

extension ViewController {
    
    internal func preapareSubViews() {
        let grid1 = UIView() // green
        let grid2 = UIView() // red
        let grid3 = UIView() // yellow
        let grid4 = UIView() //purple
        
        let views = [grid1 , grid2 , grid3 , grid4]
        let colors: [UIColor] = [.green , .red , .yellow , .purple]
        
        views.enumerated().forEach { index , respectiveView in
            self.view.addSubview(respectiveView)
            respectiveView.backgroundColor = colors[index]
        }
        
        self.createContraints(grid1: grid1, grid2: grid2, grid3: grid3, grid4: grid4)
        
     }
    
    fileprivate func createContraints(grid1: UIView , grid2: UIView , grid3: UIView , grid4: UIView) {
        let safeview = self.view.safeAreaLayoutGuide
        grid1.pin(leading: nil,
                  trialling: safeview.trailingAnchor,
                  top: safeview.topAnchor, bottom: nil,
                  padding: .init(top: 10, left: 0, bottom: 0, right: -10),
                  size: .init(width: 100, height: 100))
        
        grid2.pin(leading: nil,
                  trialling: grid1.trailingAnchor,
                  top: grid1.bottomAnchor,
                  bottom: nil,
                  padding: .init(top: 10, left: 0, bottom: 0, right: 0),
                  size: .init(width: 100, height: 100))
        
        grid3.pin(leading: safeview.leadingAnchor,
                  trialling: grid1.leadingAnchor,
                  top: safeview.topAnchor,
                  bottom: grid2.bottomAnchor,
                  padding: .init(top: 10, left: 10, bottom: 0, right: -10),
                  size: .zero)
        
        grid4.pin(leading: safeview.leadingAnchor,
                  trialling: safeview.trailingAnchor,
                  top: grid3.bottomAnchor,
                  bottom: safeview.bottomAnchor,
                  padding: .init(top: 10, left: 10, bottom: -10, right: -10),
                  size: .zero)
        
        
        //                          n
        //                          |
        // --------- safe area(-n)- 0 - (n)
        //                          |
        //                         (-n)
    }
}
