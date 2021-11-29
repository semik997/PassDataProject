//
//  ViewController.swift
//  PassDataProgect
//
//  Created by Семен Колесников on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var PasswordTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func LoginTap(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSeguay", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue){
        guard let svc = segue.source as? SecondViewController else {return}
        self.resultLabel.text = svc.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else {return}
        dvc.login = loginTF.text
        dvc.password = PasswordTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

