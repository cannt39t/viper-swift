//
//  ImageViewerPresenter.swift
//  Super easy dev
//
//  Created by Илья Казначеев on 26.05.2023
//

import UIKit


protocol ImageViewerPresenterProtocol: AnyObject {
    func viewDidLoad()
}

class ImageViewerPresenter {
    weak var view: ImageViewerViewProtocol?
    var router: ImageViewerRouterProtocol
    var interactor: ImageViewerInteractorProtocol

    init(interactor: ImageViewerInteractorProtocol, router: ImageViewerRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

extension ImageViewerPresenter: ImageViewerPresenterProtocol {
    
    func viewDidLoad() {
        let image = interactor.getImageForCurrentTempreture()
        view?.showImage(image: image)
    }
    
}
