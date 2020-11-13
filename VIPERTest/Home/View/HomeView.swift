//
//  HomeView.swift
//  VIPERTest
//
//  Created by sopra on 13/11/20.
//

import UIKit

class HomeView: UIViewController {
    var presenter: HomePresenterProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.view.backgroundColor = .systemOrange
    }
}

extension HomeView: HomeViewProtocol{
    
}
