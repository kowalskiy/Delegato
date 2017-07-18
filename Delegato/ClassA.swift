//
//  ViewController.swift
//  Delegato
//
//  Created by Kacper Kowalski on 18.07.2017.
//  Copyright © 2017 Kacper Kowalski. All rights reserved.
//

import UIKit

class ClassA: UIViewController, ClassBDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navigation = segue.destination as? UINavigationController,
            let classB = navigation.topViewController as? ClassB {
            classB.delegate = self;
        }
    }
    
    func changeBackgroundColor(_ color: UIColor?) {
        view.backgroundColor = color
    }
    
   

}

