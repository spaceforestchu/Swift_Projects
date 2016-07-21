//
//  FriendListViewController.swift
//  Friendbook
//
//  Created by William on 7/20/16.
//  Copyright © 2016 SpaceForest. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let myFriends = ["hamster01", "hamster02", "hamster03"]
    
    var selectedFriend = "Joe"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myFriends.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel!.text = myFriends[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedFriend = myFriends[indexPath.row]
        self.performSegueWithIdentifier("friendListToFriendDetail", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailViewController = segue.destinationViewController as! FriendViewController
        
        detailViewController.name = self.selectedFriend
        
        if self.selectedFriend == "hamster01" {
            detailViewController.birthday = "July 19th"
        } else if self.selectedFriend == "hamster02" {
            detailViewController.birthday = "June 12th"
        } else if self.selectedFriend == "hamster03" {
            detailViewController.birthday = "May 11th"
        }
        
    }
    
}
