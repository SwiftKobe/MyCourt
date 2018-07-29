//
//  MainTabBarController.swift
//  FolledoMyCourt
//
//  Created by Samuel Folledo on 7/13/18.
//  Copyright © 2018 Samuel Folledo. All rights reserved.
//

import UIKit
import FirebaseAuth

class MainTabBarController: UITabBarController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        checkLoggedInUserStatus()
        
        self.selectedIndex = 1
        
    }
    
//
//    private func logoutTapped() {
//        do {
//            try Auth.auth().signOut()
//            let cookies = HTTPCookieStorage.shared
//            let facebookCookies = cookies.cookies(for: URL(string: "https://facebook.com/")!)
//            for cookie in facebookCookies! {
//                cookies.deleteCookie(cookie )
//            }
//            //self.present(loginViewController, animated: true, completion: nil)
//            self.performSegue(withIdentifier: "Logout", sender: nil)
//        } catch let error {
//            Service.showAlert(on: self, style: .alert, title: "Logout Error", message: error.localizedDescription)
//            //print(error)
//        }
//    }

    

    fileprivate func checkLoggedInUserStatus() {
        
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                print("No current logged in user... Logging out")
                //self.logoutTapped()
                self.performSegue(withIdentifier: "mainTabBarToLoginSegue", sender: nil)
            }
        }
    }


}