//
//  ViewController.swift
//  ViperTest
//
//  Created by Илья Казначеев on 26.05.2023.
//

import UIKit

protocol WelcomeViewProtocol: AnyObject {
    func showDate(date: String)
    func showWeather(weather: String)
}

class ViewController: UIViewController {
    var presenter: WelcomePresenterProtocol?

    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.viewDidLoad()
    }
    @IBAction func didTapOpenImageButton(_ sender: Any) {
        presenter?.didTapOpenImageButton()
    }
}

extension ViewController: WelcomeViewProtocol {
    
    func showDate(date: String) {
        DispatchQueue.main.async { [weak dateLabel] in
            dateLabel?.text = date
        }
    }
    
    func showWeather(weather: String) {
        DispatchQueue.main.async { [weak weatherLabel] in
            weatherLabel?.text = weather
        }
    }

}
