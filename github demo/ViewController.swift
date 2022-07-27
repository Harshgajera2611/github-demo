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
        navigationController?.title = "github demo"
        navigationController?.isNavigationBarHidden = true
        
        let button = UIButton()
        button.setTitle("check", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc
    func clickButton() {
        print("check")
    }

}

