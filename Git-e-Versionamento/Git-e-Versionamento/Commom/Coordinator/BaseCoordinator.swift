//
//  Coordinator.swift
//  Git-e-Versionamento
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 13/11/20.
//

import Foundation
import UIKit

enum PresentationType {
    case modal(viewController: UIViewController)
    case push(navigation: UINavigationController)
    
    public func associateValue() -> Any? {
        switch self {
        case .modal(let value):
            return value
        case .push(let value):
            return value
        }
    }
}

protocol Coordinator: AnyObject {
    associatedtype V: UIViewController
    var view: V? {get set}
    var navigation: UINavigationController? {get set}
    func start() -> V
    func start(usingPresentation presentation: PresentationType)
    func stop()
}

extension Coordinator {
    func start() -> V {
        if let view = view {
            return view
        }
        fatalError("You cannot start coordinator without initializing property view!")
    }
    
     func start(usingPresentation presentation: PresentationType) {
        switch presentation {
        case .modal(let navigation):
            self.navigation = UINavigationController(rootViewController: start())
            guard let nav = self.navigation else {return}
            navigation.present(nav, animated: true, completion: nil)
        case .push(let navigation):
            self.navigation = navigation
            navigation.pushViewController(start(), animated: true)
        }
    }
}


