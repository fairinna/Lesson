//
//  MyNavigationControler.swift
//  fairVast
//
//  Created by Orchidea on 14/11/2017.
//  Copyright © 2017 Orchidea. All rights reserved.
//

import UIKit

class MyNavigationControler: UINavigationController {
    
    private var userLoad, pass: String!
    

    public func setCredentials (user: String, pass: String){
       userLoad = user
       self.pass = pass
        
    }
    public func getCredentials() -> (user: String, pass: String){
        return (userLoad, pass)
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
