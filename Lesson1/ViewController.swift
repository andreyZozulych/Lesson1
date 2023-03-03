//
//  ViewController.swift
//  Lesson1
//
//  Created by Andrii Zozulych on 03.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var squareView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a new layer for the gradient
        let gradientLayer = CAGradientLayer()
        
        // Define the colors for the gradient
        gradientLayer.colors = [
            UIColor.green.cgColor,
            UIColor.cyan.cgColor
        ]
        
        // Set the layer's frame to be the same as squareView's bounds
        gradientLayer.frame = squareView.bounds
        gradientLayer.cornerRadius = 14
        
        // Add the gradient layer to squareView's layer as a sublayer
        squareView.layer.addSublayer(gradientLayer)
        
        // Add corner radius and shadow to squareView
        squareView.layer.cornerRadius = 14
        squareView.layer.shadowColor = UIColor.black.cgColor
        squareView.layer.shadowOpacity = 0.5
        squareView.layer.shadowOffset = CGSize(width: 0, height: 2)
        squareView.layer.shadowRadius = 4
        
        // Add constraints to squareView
        squareView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100),
            squareView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}

