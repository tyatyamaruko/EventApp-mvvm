//
//  TitleSubtitleCellViewModel.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/18.
//

import Foundation

final class TitleSubTitleCellViewModel {
    let title: String
    private(set) var subtitle: String
    let placeholder: String
    
    init(title: String, subtitle: String, placeholder: String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
}
