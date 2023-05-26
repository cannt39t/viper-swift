//
//  WelcomeIntercator.swift
//  ViperTest
//
//  Created by Илья Казначеев on 26.05.2023.
//

import Foundation


protocol WelcomeInteractorProtocol: AnyObject {
    func loadDate()
    func loadWeather()
    var temperature: Int { get set }
}

class WelcomeIntercator: WelcomeInteractorProtocol {
    
    weak var presenter: WelcomePresenterProtocol?
    
    let dateService = DateService()
    let weatherService = WeatherService()
    var temperature: Int = 0
    
    func loadDate() {
        dateService.getDate { [weak presenter] date in
            presenter?.didLoad(date: date.description)
        }
    }
    
    func loadWeather() {
        weatherService.getWeather { [weak self] temp in
            self?.presenter?.didLoad(weather: temp)
            self?.temperature = temp
        }
    }
}
