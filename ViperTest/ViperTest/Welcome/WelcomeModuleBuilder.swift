//
//  WelcomeModuleBuilder.swift
//  ViperTest
//
//  Created by Илья Казначеев on 26.05.2023.
//

import UIKit

class WelcomeModuleBuilder {
    static func build () -> ViewController {
        let interactor = WelcomeIntercator()
        let router = WelcomeRouter()
        let presener = WelcomePresenter(router: router, interactor: interactor)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "Main") as! ViewController
        viewController.presenter = presener
        presener.view = viewController
        interactor.presenter = presener
        router.viewController = viewController
        return viewController
    }
}

