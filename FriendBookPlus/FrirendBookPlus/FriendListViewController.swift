//
//  ViewController.swift
//  FrirendBookPlus
//
//  Created by William on 7/23/16.
//  Copyright © 2016 SpaceForest. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createFriends()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func createFriends() {
        let elaine = Friend()
        elaine.name = "Elaine"
        elaine.phoneNumber = "123-533-333"
        elaine.birthday = "September 4th 2001"
        elaine.picture = UIImage(named: "elaine_benes")!
        self.friends.append(elaine)
        
        
        let george = Friend()
        george.name = "George"
        george.phoneNumber = "343-333-1111"
        george.birthday = "December 4th 2001"
        george.picture = UIImage(named: "george_costanza")!
        self.friends.append(george)
        
        let krammer = Friend()
        krammer.name = "krammer"
        krammer.phoneNumber = "100-444-1111"
        krammer.birthday = "December 31th 2001"
        krammer.picture = UIImage(named: "cosmo_kramer")!
        self.friends.append(krammer)
        
        
        let jerry = Friend()
        jerry.name = "Jerry"
        jerry.phoneNumber = "343-333-1111"
        jerry.birthday = "December 4th 2001"
        jerry.picture = UIImage(named: "jerry-seinfeld")!
        self.friends.append(jerry)
    }

   
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friends.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        let friend = self.friends[indexPath.row]
        cell.textLabel!.text = friend.name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let friend = self.friends[indexPath.row]
        self.performSegueWithIdentifier("detailSegue", sender: friend)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! FriendDetailViewController
        
        detailVC.friend = sender as! Friend
    }
}

