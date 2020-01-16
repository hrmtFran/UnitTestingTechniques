//
//  ViewController.swift
//  UnitTestingTechniques
//
//  Created by Francisco Olvera on 1/15/20.
//  Copyright © 2020 Francisco Olvera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var apiClient: WebApiClientModel = ApiClient()
    let label = UILabel()
    var text: String = "" {
        didSet {
            self.label.text = self.text
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtonSection()
        addResultLabel()
    }

    @objc func buttonTapped() {
        getTodo()
    }
    
    func getTodo() {
        apiClient.getNew { (response, error) in
            guard let res = response, error == nil else { return }
            self.text = res.title
        }
    }
}
// MARK: UILayout
extension ViewController {
    func addButtonSection() {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        button.setTitle("button", for: .normal)
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    func addResultLabel() {
        if label.superview == view { return }
        label.text = ""
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }
}
