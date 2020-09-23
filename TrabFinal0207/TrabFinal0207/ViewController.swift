//
//  ViewController.swift
//  TrabFinal0207
//
//  Created by COTEMIG on 21/09/20.
//  Copyright © 2020 AnaBrendha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userText: UITextField!

    @IBOutlet weak var senhaText: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        let user = userText.text
        let password = senhaText.text
        
        if user == "admin" && password == "123"{
            performSegue(withIdentifier: "segueLogin", sender: nil)
        }else {
            let alert = UIAlertController(title: "Erro", message: "usuario ou senha invalido", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alert, animated: true)
        }
        
    }
    
}

struct Login: Codable{
    let user: String
    let password: String
}

