//
//  ViewController.swift
//  fairVast
//
//  Created by Orchidea on 26/09/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private static let LOGIN :String! = "login"

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var pasword: UITextField!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (identifier == ViewController.LOGIN){
            return validate()
            
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ViewController.LOGIN{
            let naviGate = segue.destination as! MyNavigationControler
            naviGate.setCredentials(user: username.text!, pass: pasword.text!)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    private func validate() -> Bool {
        let user = username.text!
        let pass = pasword.text!
        return !user.isEmpty && !pass.isEmpty && user != pass
    }


}

