//
//  ViewController.swift
//  github demo
//
//  Created by Harsh Gajera on 27/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = "hello"
        label.backgroundColor = .green
        label.textAlignment = .center
        label.numberOfLines = 0
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(label)
    }


}

