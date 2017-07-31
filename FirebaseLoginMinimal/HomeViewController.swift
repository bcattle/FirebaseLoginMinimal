//
//  HomeViewController.swift
//  FirebaseLoginMinimal
//
//  Created by Bryan on 7/30/17.
//  Copyright © 2017 com.github.bcattle. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction
    func logOutAction(sender: AnyObject) {
        if Auth.auth().currentUser != nil {
            do {
                try Auth.auth().signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUp")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }

}
