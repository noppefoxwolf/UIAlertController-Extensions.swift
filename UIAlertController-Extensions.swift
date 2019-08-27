//
//  UIAlertController+Extensions.swift
//  Mejica
//
//  Created by beta on 2019/08/28.
//  Copyright © 2019 noppelab. All rights reserved.
//

import UIKit

extension UIAlertController {
    static var actionSheet: UIAlertController {
        return self.actionSheet()
    }
    static func actionSheet(title: String? = nil, message: String? = nil) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
    }
    static var alert: UIAlertController {
        return self.alert()
    }
    static func alert(title: String? = nil, message: String? = nil) -> UIAlertController {
        return UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
}

extension UIAlertController {
    func addDefault(title: String, conditions: Bool = true, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .default, handler: handler))
    }
    
    func addDestructive(title: String, conditions: Bool = true, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .destructive, handler: handler))
    }
    
    func addCancel(title: String = "キャンセル", conditions: Bool = true, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .cancel, handler: handler))
    }
}
