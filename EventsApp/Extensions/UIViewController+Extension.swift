//
//  UIViewController+Extension.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/17.
//

import Foundation
import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return viewController
    }
}
