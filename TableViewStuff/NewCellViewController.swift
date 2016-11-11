//
//  NewCellViewController.swift
//  TableViewStuff
//
//  Created by Maria on 11/10/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit

class NewCellViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        guard let viewController = navigationController?.viewControllers.first as? ViewController, let text = textField.text else { return }
        viewController.strings.append(text)
    }
    
    
}
