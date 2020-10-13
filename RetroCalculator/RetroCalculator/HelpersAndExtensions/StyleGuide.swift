//
//  StyleGuide.swift
//  RetroCalculator
//
//  Created by Owen Barrott on 10/12/20.
//  Copyright © 2020 Owen Barrott. All rights reserved.
//

import UIKit

struct FontNames {
    static let greenScreen = "GreenScreen"
}

extension UIColor {
    static let terminalGreen = UIColor(named: "terminalGreen")!
}

extension UIView {
    func addCornerRadius(radius:CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
}
