//
//  WelcomePresenter.swift
//  ViperTest
//
//  Created by Илья Казначеев on 26.05.2023.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject {
    func viewDidLoad()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
    func didTapOpenImageButton()
}

class WelcomePresenter {
    weak var view: WelcomeViewProtocol?
    var router: WelcomeRouterProtocol
    var interactor: WelcomeInteractorProtocol
    
    init(router: WelcomeRouterProtocol, interactor: WelcomeInteractorProtocol) {
        self.router = router
        self.interactor = interactor
    }
}

extension WelcomePresenter: WelcomePresenterProtocol {
    
    func viewDidLoad() {
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date found")
    }
    
    func didLoad(weather: Int?) {
        let tempreature = weather?.description
        view?.showWeather(weather: tempreature ?? "No weather found")
    }
    
    func didTapOpenImageButton() {
        let temp = interactor.temperature
        router.openImage(for: temp)
    }
}
