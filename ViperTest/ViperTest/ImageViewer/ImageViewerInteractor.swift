//
//  ImageViewerInteractor.swift
//  Super easy dev
//
//  Created by Илья Казначеев on 26.05.2023
//

import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
    func getImageForCurrentTempreture() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
    
    weak var presenter: ImageViewerPresenterProtocol?
    
    let temperature: Int
    
    init(presenter: ImageViewerPresenterProtocol? = nil, temperature: Int) {
        self.presenter = presenter
        self.temperature = temperature
    }
    
    func getImageForCurrentTempreture() -> UIImage? {
        if temperature < 0 {
            return UIImage(systemName: "snowflake")
        } else if temperature > 10 {
            return UIImage(systemName: "sun.min.fill")
        } else {
            return UIImage(systemName: "cloud.fill")
        }
    }
    
}


