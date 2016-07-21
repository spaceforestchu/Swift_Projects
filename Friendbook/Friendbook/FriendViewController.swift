//
//  FriendViewController.swift
//  Friendbook
//
//  Created by William on 7/20/16.
//  Copyright © 2016 SpaceForest. All rights reserved.
//

import UIKit

class FriendViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    var name = "Jenna"
    var birthday = "June 18th"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.nameLabel.text = "\(self.name)'s birthday is"
        self.birthdayLabel.text = self.birthday
    }

   

}
