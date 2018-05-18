//
//  ButtonAnimation.swift
//  RainbowSixApp
//
//  Created by Danny Cameron on 5/17/18.
//  Copyright © 2018 DCEJ. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
        func pulsate() {
            
            let pulse = CASpringAnimation(keyPath: "transform.scale")
            pulse.duration = 0.3
            pulse.fromValue = 0.95
            pulse.toValue = 1.05
            pulse.autoreverses = true
            pulse.repeatCount = 1
            pulse.initialVelocity = 0.5
            pulse.damping = 1.0
            
            layer.add(pulse, forKey: nil)
        }

}
