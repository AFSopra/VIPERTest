//
//  HomeRouter.swift
//  VIPERTest
//
//  Created by sopra on 13/11/20.
//

import UIKit

final class HomeRouter {
    weak var view: HomeView!

    init(withView view: HomeView) {
        self.view = view
    }

    static func assembleModule(withinNavController: Bool = false) -> UIViewController {
        let viewController = viewControllerFromStoryboard()
        let router = HomeRouter(withView: viewController)
        let interactor = HomeInteractor()
        let presenter = HomePresenter(withView: viewController, interactor: interactor, router: router)

        viewController.presenter = presenter

        if withinNavController {
            let navigationController = UINavigationController(rootViewController: viewController)
            return navigationController
        }

        return viewController
    }

    static func viewControllerFromStoryboard() -> HomeView {
        return HomeView(nibName: "HomeView", bundle: Bundle.main)
    }
}

extension HomeRouter: HomeRouterProtocol {
    // Aqui irán las funciones de navegación, que incluirán el ensamblamiento del módulo y su presentación
}
