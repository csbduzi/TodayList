//
//  ViewController.swift
//  TodayList
//
//  Created by Empire on 2019-01-14.
//  Copyright © 2019 Empire. All rights reserved.
//

import UIKit

class TodayListViewController: UITableViewController {
    
    let itemArray = ["Micheal Jordan", "Kobe Bryant", "Lebron James"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        
         cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    // MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        if(tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark){
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
    tableView.deselectRow(at: indexPath, animated: true)
    
    }
    
    
    
}

