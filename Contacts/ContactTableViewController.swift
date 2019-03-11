//
//  ContactTableViewController.swift
//  Contacts
//
//  Created by Iyin Akinlolu-Raphael on 7/13/18.
//  Copyright © 2018 AppCompany. All rights reserved.
//

import UIKit

class ContactTableViewController: UITableViewController {

    // MARK: - Table view data source

    //How many sections should be in the table view?
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //How many cells should be in each section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return contacts.count
    }

    //What information should be displayed in each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact
        
        // Configure the cell...

        return cell
    }



    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ContactDetail" {
        
        // Get the new view controller using segue.destinationViewController.
            let contactDetailVc = segue.destination as? ContactDetailViewController
            
        // Pass the selected object to the new view controller.
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            
            let contact = contacts[indexPath.row]
            
            contactDetailVc?.contact = contact
        }
    }
    
    let contacts = ["Iyin", "Temi", "Demilade", "BigSis", "Sister", "Daddy", "Mum"]

}
