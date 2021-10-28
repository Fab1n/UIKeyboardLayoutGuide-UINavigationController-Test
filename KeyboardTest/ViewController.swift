//
//  ViewController.swift
//  KeyboardTest
//
//  Created by Letsbundle on 28.10.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let kbView = UIView()
        kbView.backgroundColor = .green
        kbView.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(kbView)

        kbView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        kbView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        kbView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true

        kbView.bottomAnchor.constraint(equalTo: self.view.keyboardLayoutGuide.topAnchor).isActive = true
    }

    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {}

}

