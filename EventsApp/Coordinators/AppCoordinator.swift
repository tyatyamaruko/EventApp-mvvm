//
//  Appcoordinator.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/16.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        let eventListCoordinator = EventListCoordinator(navController: navigationController)
        childCoordinators.append(eventListCoordinator)
        eventListCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
