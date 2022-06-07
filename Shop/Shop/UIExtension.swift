//
//  UIExtension.swift
//  Shop
//
//  Created by Doolot on 3/6/22.
//

import Foundation
import UIKit
import SnapKit

extension UIView {
    
    var safeArea: ConstraintBasicAttributesDSL {
        
        #if swift(>=3.2)
            if #available(iOS 11.0, *) {
                return self.safeAreaLayoutGuide.snp
            }
            return self.snp
        #else
            return self.snp
        #endif
    }
}
