//
//  GFDataLoadingVC.swift
//  GHFollowers
//
//  Created by Hunter Dobbelmann on 2/9/20.
//  Copyright © 2020 hunterdobbapps. All rights reserved.
//

import UIKit

class GFDataLoadingVC: UIViewController {
    
    var containerView: UIView!
    
    func showLoadingView() {
        containerView = UIView(frame: view.bounds)
        view.addSubview(containerView)
        
        containerView.backgroundColor   = .systemBackground
        containerView.alpha             = 0
        
        UIView.animate(withDuration: 0.25) { self.containerView.alpha = 0.8 }
        
        let activityIndiacator = UIActivityIndicatorView(style: .large)
        containerView.addSubview(activityIndiacator)
        
        activityIndiacator.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            activityIndiacator.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            activityIndiacator.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
        activityIndiacator.startAnimating()
    }
    
    
    func dismissLoadingView() {
        DispatchQueue.main.async {
            self.containerView.removeFromSuperview()
            self.containerView = nil
        }
    }
    
    
    func showEmptyStateView(with message: String, in view: UIView) {
        let emptyStateView = GFEmptyStateView(message: message)
        emptyStateView.frame = view.bounds
        emptyStateView.backgroundColor = .systemBackground
        view.addSubview(emptyStateView)
    }
}
