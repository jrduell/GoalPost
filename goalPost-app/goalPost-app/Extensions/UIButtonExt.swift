//
//  UIButtonExt.swift
//  goalPost-app
//
//  Created by Jacob Duell on 12/17/20.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.4941176471, green: 0.7725490196, blue: 0.462745098, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.7464011312, green: 0.8857318759, blue: 0.7402122021, alpha: 1)
    }
}
