//
//  TodoListViewController.swift
//  Todoer
//
//  Created by Ajinkya Paranjape on 23/08/18.
//  Copyright © 2018 Ajinkya Paranjape. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let listItemArray = ["Buy Groceries", "Go to Meet Aunt", "Get a Gift for Rakhi"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItemArray.count;
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoListCell", for: indexPath);
        
        //let cell = UITableViewCell.init(style: .default, reuseIdentifier: "todoListCell");
        
        cell.textLabel?.text = listItemArray[indexPath.row];
        
        return cell;
        
    }
    
    //MARK: - TableView Delegate Methods
    
    //  TableView didSelectRow method
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "todoListCell", for: indexPath);
        
        //print(indexPath.row);
        
        if (tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark) {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .none;
            
        }
        
        else {
            
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark;
            
        }
    
        tableView.deselectRow(at: indexPath, animated: true);
        
        //cell.accessoryType = .checkmark;
        
    }

}

