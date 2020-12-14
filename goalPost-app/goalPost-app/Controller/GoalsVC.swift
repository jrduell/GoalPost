//
//  ViewController.swift
//  goalPost-app
//
//  Created by Jacob Duell on 12/14/20.
//

import UIKit

class GoalsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addGoalButtonWasPressed(_ sender: Any) {
        print("button was pressed")
    }
    
}

