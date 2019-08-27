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
    func addDefault(title: String?, conditions: Bool = true, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .default, handler: handler))
    }
    
    func addDestructive(title: String?, conditions: Bool = true, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .destructive, handler: handler))
    }
    
    func addCancel(title: String? = "キャンセル", conditions: Bool = true, handler: ((UIAlertAction) -> Void)? = nil) {
        guard conditions else { return }
        addAction(.init(title: title, style: .cancel, handler: handler))
    }
}
 
extension UIAlertController {
    func addDefault<T>(title: String?, ifExists value: T?, handler: ((UIAlertAction, T) -> Void)? = nil) {
        if let value = value {
            addDefault(title: title) { (action) in
                handler?(action, value)
            }
        }
    }
    
    func addDestructive<T>(title: String?, ifExists value: T?, handler: ((UIAlertAction, T) -> Void)? = nil) {
        if let value = value {
            addDestructive(title: title) { (action) in
                handler?(action, value)
            }
        }
    }
    
    func addCancel<T>(title: String? = "キャンセル", ifExists value: T?, handler: ((UIAlertAction, T) -> Void)? = nil) {
        if let value = value {
            addCancel(title: title) { (action) in
                handler?(action, value)
            }
        }
    }
}
