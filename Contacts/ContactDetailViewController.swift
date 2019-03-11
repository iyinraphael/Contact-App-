//
//  ContactDetailViewController.swift
//  Contacts
//
//  Created by Iyin Akinlolu-Raphael on 7/13/18.
//  Copyright © 2018 AppCompany. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard isViewLoaded else {return}
        contactNameLabel.text = contact
    }

    var contact: String? {
        didSet {
            updateViews()
        }
    }
    @IBOutlet weak var contactNameLabel: UILabel!
    
}
