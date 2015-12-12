//
//  ContactViewController.swift
//  Whistle
//
//  Created by Catherine Beck on 12/5/15.
//  Copyright © 2015 KCC. All rights reserved.
//

import UIKit
import SwiftAddressBook
import AddressBook

class ContactViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //You have an array of contacts 
    //your goal is to show them in a tableview

    @IBOutlet weak var tableView: UITableView!
    
    
    var contactViewController: ContactViewController? = nil
    var group : [SwiftAddressBookGroup]? = []
    var people : [SwiftAddressBookPerson]? = []
    var names : [String?]? = []
    var numbers : [Array<String?>?]? = []
    var selectedPeople : [SwiftAddressBookPerson]? = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view.
        
                swiftAddressBook?.requestAccessWithCompletion({ (success, error) -> Void in
                   if success {
                        //do something with swiftAddressBook
        
                        if let people = swiftAddressBook?.allPeople {
                            self.people = swiftAddressBook?.allPeople
                          }
                       }
    
                    else {
                        //no success. Optionally evaluate error
                   }
               })
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
//    START HERE
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //makes a row of each contact
        //find the contact in your array, and display
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let person = people![indexPath.row]
        cell.textLabel!.text = person.firstName! + " " + person.lastName!
        
        
        if (selectedPeople!.contains(person)) {
            cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        }
        else {
            cell.accessoryType = UITableViewCellAccessoryType.None

        }
    
        
        
        return cell
    
    }
        
        

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return self.people!.count
        
        //number of rows in the tableview, counting the number of contacts
    }
        
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let person = people![indexPath.row]
        
        if let index = self.people!.indexOf(person) {
            selectedPeople!.append(person)
            
        } else {
                // cell.accessoryType = UITableViewCellAccessoryType.None
            
        }
        
        tableView.reloadData()
    }
        

   //GET THE INFO FOR THE CONTACT
//        
//        let secondViewController = self.storyboard!.instantiateViewControllerWithIdentifier("contactDetail")
//            as! ContactsDetailViewController
//        
//        // pass the relevant data to the new sub-ViewController
//        secondViewController.contactItem = person;
//        
//        self.navigationController?.pushViewController(secondViewController, animated: true)
//      
        
        

//    
    // MARK: - Segues
    
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "showContactSegue" {
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                let person = people![indexPath.row] as! NSDate
//                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! ContactsDetailViewController
//              let name = controller.contactItem
//                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
//                controller.navigationItem.leftItemsSupplementBackButton = true
//            }
//        }
//    }
//
//    
    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "ShowContactSegue" {
//            if let indexPath = self.tableView.indexPathForSelectedRow {
//                controller.contactItem = people
//                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
//                controller.navigationItem.leftItemsSupplementBackButton = true
//            }
//        }
//    }

   // didSelectRowAtIndexPath
    /*
    // MARK: - Navigation

    
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}