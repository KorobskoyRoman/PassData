//
//  ViewController.swift
//  PassDataProject
//
//  Created by Roman Korobskoy on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else {return}
        guard let sourceVC = segue.source as? SecondViewController else {return}
        self.resultLabel.text = sourceVC.label.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? SecondViewController else {return}
        destVC.login = loginTF.text
    }
}

