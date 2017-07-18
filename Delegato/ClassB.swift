//
//  ClassB.swift
//  Delegato
//
//  Created by Kacper Kowalski on 18.07.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import UIKit

class ClassB: UIViewController {
    
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstView.backgroundColor = .cyan
        firstView.layer.borderColor = UIColor.white.cgColor
        firstView.layer.borderWidth = 2.0
        firstView.layer.cornerRadius = firstView.frame.width / 2
        firstView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
        secondView.backgroundColor = .brown
        secondView.layer.borderColor = UIColor.white.cgColor
        secondView.layer.borderWidth = 2.0
        secondView.layer.cornerRadius = secondView.frame.width / 2
        secondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
        
    }
    
    @IBAction func dismissView (_sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
        
    }
    
    func handleTap (_ tapGesture: UITapGestureRecognizer) {
        
        
    }
}
