//
//  ViewController.swift
//  SecondFactor
//
//  Created by Justin on 9/23/17.
//  Copyright © 2017 Aletheon Corp. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var appnameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //the defaultvalues to store user data
    let defaultValues = UserDefaults.standard
    
    // MARK: Actions
    @IBAction func login(_ sender: UIButton) {
        let parameters: Parameters=[
            "username":usernameTextField.text!,
            "password":passwordTextField.text!
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //hiding the navigation button
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton

        // Do any additional setup after loading the view, typically from a nib.
        
        //if user is already logged in switching to profile screen
        if defaultValues.string(forKey: "username") != nil{
            let profileViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewcontroller") as! ProfileViewController
            self.navigationController?.pushViewController(profileViewController, animated: true)
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

