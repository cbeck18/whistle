//
//  ContactsDetailViewController.swift
//  Whistle
//
//  Created by Catherine Beck on 12/5/15.
//  Copyright © 2015 KCC. All rights reserved.
//

import UIKit
import SwiftAddressBook
import AddressBook


class ContactsDetailViewController: UIViewController {
    
    @IBOutlet weak var contactDescriptionLabel: UILabel!
    
    @IBOutlet weak var contactNumberLabel: UILabel!
    
    @IBOutlet weak var contactAddressLabel: UILabel!
    var contactItem: SwiftAddressBookPerson?

    override func viewDidLoad()
    {
        super.viewDidLoad()
       
        contactDescriptionLabel.text = self.contactItem!.firstName! + " " + self.contactItem!.lastName!
        if let phoneNumber = self.contactItem?.phoneNumbers?[0] {
            contactNumberLabel.text = phoneNumber.value
        }
        
        if let addresses = contactItem?.addresses {
            var address = addresses[0].value
            
            contactAddressLabel.text = address[SwiftAddressBookAddressProperty.street] as! String
            
//            XCTAssert(address[SwiftAddressBookAddressProperty.street] as? NSString == "165 Davis Street", "Incorrect street")
//            XCTAssert(address[SwiftAddressBookAddressProperty.city] as? NSString == "Hillsborough", "Incorrect city")
//            XCTAssert(address[SwiftAddressBookAddressProperty.state] as? NSString == "CA", "Incorrect state")
//            XCTAssert(address[SwiftAddressBookAddressProperty.zip] as? NSString == "94010", "Incorrect zip")
        }
        
        //contactAddressLabel.text = "\(self.contactItem!.addresses!)"

   
        // Do any additional setup after loading the view
        
      
       

    }

   
        //CODE TO BE RUN ON CELL TOUCH
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
