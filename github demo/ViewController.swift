//
//  ViewController.swift
//  github demo
//
//  Created by Harsh Gajera on 27/07/22.
//

import UIKit

class ViewController: UIViewController {

    var label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "hello"
        label.backgroundColor = .green
        label.textAlignment = .center
        label.numberOfLines = 0
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(label)
        navigationController?.title = "demo of github"
        navigationController?.isNavigationBarHidden = true
        
        let button = UIButton()
        button.setTitle("check", for: .normal)
        button.backgroundColor = .lightGray
        button.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        button.tag = 1
        view.addSubview(button)
        
        let image = UIImageView()
        image.frame = CGRect(x: 100, y: 400, width: 150, height: 150)
        image.image = UIImage(named: "game")
        view.addSubview(image)
        self.setUpButton()
        
        let textField = UITextField()
        textField.frame = CGRect(x: 0, y: 50, width: view.frame.width, height: 50)
        textField.placeholder = "enter name"
        textField.borderStyle = .line
        textField.textAlignment = .left
        view.addSubview(textField)
    }
    
    func setUpButton() {
        let saveButton = UIButton()
        saveButton.frame = CGRect(x: 0, y: 600, width: 500, height: 50)
        saveButton.backgroundColor = .green
        saveButton.setTitle("save", for: .normal)
        saveButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        saveButton.setImage(UIImage(named: "game"), for: .normal)
        saveButton.contentMode = .scaleAspectFit
        saveButton.tag = 2
        view.addSubview(saveButton)
    }

    @objc
    func clickButton() {
        print("click")
        label.text = "ok work"
    }

}

