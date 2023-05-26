//
//  WeatherService.swift
//  ViperTest
//
//  Created by Илья Казначеев on 26.05.2023.
//

import Foundation


class WeatherService {
    
    
    func getWeather(completion: @escaping (Int) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            let temperature = Int.random(in: -30...30)
            completion(temperature)
        }
    }
}
