//
//  UIStackView+.swift
//  AdvancedAssignment
//
//  Created by 배은서 on 2023/09/22.
//

import UIKit

extension UIStackView {
    public func addArrangedSubviews(_ view: [UIView]) {
        view.forEach { self.addArrangedSubview($0) }
    }
}
