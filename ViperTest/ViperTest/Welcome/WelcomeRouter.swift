//
//  WelcomeRouter.swift
//  ViperTest
//
//  Created by Илья Казначеев on 26.05.2023.
//

import Foundation


protocol WelcomeRouterProtocol {
    func openImage(for temperature: Int)
}

class WelcomeRouter: WelcomeRouterProtocol {
    
    weak var viewController: ViewController?
    
    func openImage(for temperature: Int) {
        let vc = ImageViewerModuleBuilder.build(temperature: temperature)
        viewController?.present(vc, animated: true)
    }
}
