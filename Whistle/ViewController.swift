////
////  ViewController.swift
////  Whistle
////
////  Created by Catherine Beck on 11/21/15.
////  Copyright © 2015 KCC. All rights reserved.
////
//
//import UIKit
//
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        let authButton = DGTAuthenticateButton(authenticationCompletion: { (session: DGTSession?, error: NSError?) in
//            if (session != nil) {
//                // TODO: associate the session userID with your user model
//                let message = "Phone number: \(session!.phoneNumber)"
//                let alertController = UIAlertController(title: "You are logged in!", message: message, preferredStyle: .Alert)
//                alertController.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: .None))
//                self.presentViewController(alertController, animated: true, completion: .None)
//            } else {
//                NSLog("Authentication error: %@", error!.localizedDescription)
//            }
//        })
//        authButton.center = self.view.center
//        self.view.addSubview(authButton)
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//}
//
