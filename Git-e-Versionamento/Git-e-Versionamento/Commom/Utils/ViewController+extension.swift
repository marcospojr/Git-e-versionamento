//
//  UIUView+extension.swift
//  Git-e-Versionamento
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 13/11/20.
//

import Foundation
import UIKit

extension UIViewController {

  public static func genericInstantiate<T: UIViewController>() -> T {
    return T.init(nibName: String(describing: self), bundle: Bundle.init(for: self))
}

public static func instantiate() -> Self {
    return genericInstantiate()
}

}
