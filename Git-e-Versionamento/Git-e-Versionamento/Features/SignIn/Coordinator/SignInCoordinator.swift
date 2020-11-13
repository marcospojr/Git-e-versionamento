//
//  SignInCoordinator.swift
//  Git-e-Versionamento
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 13/11/20.
//

import Foundation
import UIKit

class SignInCoordinator: Coordinator {
    
    var signInViewModel: SignInViewModel?
    var view: SignInVC?
    var navigation: UINavigationController?
    
    public init() {
        view = SignInVC.instantiate()
        signInViewModel = SignInViewModel(coordinator: self)
        view?.viewModel = signInViewModel
    }
    
    func stop() {
        
    }
    
}

