//
//  EventListCoordinator.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/16.
//

import Foundation
import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navController: UINavigationController
    
    init(navController: UINavigationController) {
        self.navController = navController
    }
    
    
    func start() {
        let eventListViewController = EventListViewController.instantiate()
        navController.setViewControllers([eventListViewController], animated: false)
    }
}
