//
//  EventListViewController.swift
//  EventsApp
//
//  Created by Ryota Karita on 2021/12/16.
//

import UIKit

class EventListViewController: UIViewController {
    
    var viewModel: EventListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        let image = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(tappedAddButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc private func tappedAddButton() {
        viewModel.tappedAddEvent()
    }
    
}
