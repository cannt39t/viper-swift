//
//  ImageViewerViewController.swift
//  Super easy dev
//
//  Created by Илья Казначеев on 26.05.2023
//

import UIKit

protocol ImageViewerViewProtocol: AnyObject {
    func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
    // MARK: - Public
    var presenter: ImageViewerPresenterProtocol?
    
    @IBOutlet weak var imageView: UIImageView!

    // MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        presenter?.viewDidLoad()
    }
}

// MARK: - Private functions
private extension ImageViewerViewController {
    func initialize() {
    }
}

// MARK: - ImageViewerViewProtocol
extension ImageViewerViewController: ImageViewerViewProtocol {
    func showImage(image: UIImage?) {
        DispatchQueue.main.async { [weak imageView] in
            imageView?.image = image
        }
    }
}
