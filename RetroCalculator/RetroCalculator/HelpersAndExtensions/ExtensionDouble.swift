//
//  ExtensionDouble.swift
//  RetroCalculator
//
//  Created by Owen Barrott on 10/12/20.
//  Copyright © 2020 Owen Barrott. All rights reserved.
//

import Foundation

extension Double {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
