//
//  FirstRegistrationViewController.swift
//  fairVast
//
//  Created by Orchidea on 14/11/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit

class FirstRegistrationViewController: UIViewController {
    private var data: [String:String] = [:]
    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var townTextField: UITextField!
    
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var ageLbl: UILabel!
    
    @IBAction func sliderAge(_ sender: UISlider) {
        let ageSlider = Int(sender.value)
        ageLbl.text = "Age: \(ageSlider)"
        let ageValue = "\(Int(sender.value))"
        data["Age"] = ageValue
        
    }
    
    
    
    @IBAction func nextBtn() {
        let navigationFirst = navigationController as! MyNavigationControler
        let next = storyboard?.instantiateViewController(withIdentifier: "second") as! SecondRegViewController
        
        let cred = navigationFirst.getCredentials()
        
        data["user"] = cred.user
        data["password"] = cred.pass
        
        if firstReg(){
            data["name"] = nameTextField.text!
            data["school"] = schoolTextField.text!
            data ["town"] = townTextField.text!
            
            
        }
        next.getFullData(data)
        
        navigationController!.pushViewController(next, animated: true)
        
        
        
        
    }
    
    private func firstReg() -> Bool{
        let name = nameTextField.text!
        let school = schoolTextField.text!
        let town = townTextField.text!
        return !name.isEmpty && !school.isEmpty && !town.isEmpty
        
    }
    
    
    override func viewDidLoad() {
        let userName = navigationController as! MyNavigationControler
        let user = userName.getCredentials()
        super.viewDidLoad()
        
        welcomeLbl.text = "Wellcome user \(user.user) to registration page!"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
