//
//  SecondViewController.swift
//  PassDataProgect
//
//  Created by Семен Колесников on 23.11.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    var password: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else {return}
        guard let password = self.password else {return}


        label.text = "Hello, \(login), you password: \(password)"
    }
    
    @IBAction func goBackTap(_ sender: UIButton) {
    }
    
}
