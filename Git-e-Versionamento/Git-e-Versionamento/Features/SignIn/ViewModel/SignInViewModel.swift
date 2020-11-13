//
//  SignInViewModel.swift
//  Git-e-Versionamento
//
//  Created by Gabriel Mendonça Sousa Gonçalves  on 13/11/20.
//

import Foundation
import UIKit

class SignInViewModel: BaseViewModel {
    
    var childCoordinator: SignInCoordinator
    
    public init(coordinator: SignInCoordinator) {
        self.childCoordinator = coordinator
        
    }
}
