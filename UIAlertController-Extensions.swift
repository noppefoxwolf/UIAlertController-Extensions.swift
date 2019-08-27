//
//  UIAlertController+Extensions.swift
//  Mejica
//
//  Created by beta on 2019/08/28.
//  Copyright © 2019 noppelab. All rights reserved.
//

import UIKit

extension UIAlertController {
    static func actionSheet(title: String? = nil, message: String? = nil) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    }
    static func alert(title: String? = nil, message: String? = nil) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
}

extension UIAlertController {
    func addDefault(title: String, conditions: Bool, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .default, handler: handler))
    }
    
    func addDestructive(title: String, conditions: Bool, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .destructive, handler: handler))
    }
    
    func addCancel(title: String = "キャンセル", conditions: Bool, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .cancel, handler: handler))
    }
}
