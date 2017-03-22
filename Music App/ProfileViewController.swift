//
//  ProfileViewController.swift
//  Music App
//
//  Created by Pansit Wattana on 3/22/17.
//  Copyright © 2017 Pansit Wattana. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var passcode: UILabel!
    var user = User()
    @IBOutlet weak var studentid: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var name: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        let pass = UserDefaults.standard.object(forKey: "password")
        
        if let passcode = pass as? String{
            self.user.passcode = passcode
        }
        
        studentid.text = "Student ID:\t\t\t\(user.id)"
        name.text = "Name:\t\t\(user.name)"
        lastName.text = "Last Name:\t\(user.lastName)"
        passcode.text = user.passcode
        
        // Do any additional setup after loading the view.
    }

    @IBAction func song(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
}
