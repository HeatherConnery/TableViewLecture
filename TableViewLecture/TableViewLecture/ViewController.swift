//
//  ViewController.swift
//  TableViewLecture
//
//  Created by Heather Connery on 2015-10-27.
//  Copyright © 2015 HConnery. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var myDataSource = ["Kwame","Johanna","Ethan","Elijah","Etienne"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDataSource.count
    }
    
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myDataSource[indexPath.row]
        //Assignment read right to left (cell is built up reading left to right)
        cell.detailTextLabel?.text = "Detailed text"
        return cell
    }


    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

