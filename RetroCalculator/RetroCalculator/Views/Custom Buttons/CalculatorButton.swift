//
//  CalculatorButton.swift
//  RetroCalculator
//
//  Created by Owen Barrott on 10/12/20.
//  Copyright © 2020 Owen Barrott. All rights reserved.
//

import UIKit

class CalculatorButton: UIButton {
    
    
    // MARK: - Lifecycle Functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    // MARK: - Class Functions
    func setupViews() {
        updateFontTo(font: FontNames.greenScreen)
        self.setTitleColor(.terminalGreen, for: .normal)
        self.addCornerRadius()
    }
    
    func updateFontTo(font: String) {
        guard let size = self.titleLabel?.font.pointSize else { return }
        self.titleLabel?.font = UIFont(name: font, size: size)
    }
}
