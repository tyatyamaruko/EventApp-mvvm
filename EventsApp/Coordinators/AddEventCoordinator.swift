//
//  AddEventCoordinator.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/17.
//

import Foundation
import UIKit

final class AddEventCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    
    private let navController: UINavigationController
    var parentCoordinator: EventListCoordinator?
    
    init(navController: UINavigationController) {
        self.navController = navController
    }
    
    func start() {
        let viewcontroller: AddEventViewController = .instantiate()
        let addEventViewModel = AddEventViewModel()
        addEventViewModel.coordinator = self
        viewcontroller.viewModel = addEventViewModel
        navController.present(viewcontroller, animated: true)
    }
    
    func didFinishAddEvent() {
        parentCoordinator?.childDidFinish(self)
    }
    
    deinit {
        print("deinit from add eventt coordinaootr")
    }
}
