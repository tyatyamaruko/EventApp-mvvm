//
//  EventListViewModel.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/17.
//

import Foundation

final class EventListViewModel {
    
    let title = "Events"
    var coordinator: EventListCoordinator?
    
    
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
}
