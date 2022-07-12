//
//  TaskViewController.swift
//  CoreDemoApp
//
//  Created by Nikolai Maksimov on 12.07.2022.
//

import UIKit

class TaskViewController: UIViewController {
    
   private lazy var taskTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "New Task"
        textField.borderStyle = .roundedRect
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
       setupSubviews(taskTextField)
        setConstraints()
        
        
    }
    
    private func setupSubviews(_ subViews: UIView...) {
        subViews .forEach { subView in
            view.addSubview(subView)
        }
    }
    
    private func setConstraints() {
        taskTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            taskTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            taskTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            taskTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }

}
