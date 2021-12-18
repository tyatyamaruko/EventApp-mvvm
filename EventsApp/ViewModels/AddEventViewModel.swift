//
//  AddEventViewModel.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/17.
//

import Foundation
import UIKit

final class AddEventViewModel {
    
    var onUpdate: () -> Void = {}
    
    enum Cell {
        case titleSubtitle(TitleSubTitleCellViewModel)
        case titleImage
    }
    
    private(set) var cells: [AddEventViewModel.Cell] = []
    
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    
    func viewDidLoad() {
        cells = [
            .titleSubtitle(TitleSubTitleCellViewModel(title: "Name", subtitle: "", placeholder: "Add a name")),
            .titleSubtitle(TitleSubTitleCellViewModel(title: "Date", subtitle: "", placeholder: "Select a date")),
        ]
        onUpdate()
    }

    func numberOfRows() -> Int {
        return cells.count
    }
    
    func cell(for indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
}


