//
//  DateService.swift
//  ViperTest
//
//  Created by Илья Казначеев on 26.05.2023.
//

import Foundation

class DateService {
    
    func getDate(completion: @escaping (Date) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion(Date())
        }
    }
}
