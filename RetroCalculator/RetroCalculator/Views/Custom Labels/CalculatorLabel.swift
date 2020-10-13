//
//  CalculatorLabel.swift
//  RetroCalculator
//
//  Created by Owen Barrott on 10/12/20.
//  Copyright © 2020 Owen Barrott. All rights reserved.
//

import UIKit

class CalculatorLabel: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        updateFontTo(font: FontNames.greenScreen)
        self.textColor = .terminalGreen
    }
    
    func updateFontTo(font: String) {
        let size = self.font.pointSize
        self.font = UIFont(name: font, size: size)
    }
}
