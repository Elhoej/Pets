//
//  ViewController.swift
//  Pets
//
//  Created by Simon Elhoej Steinmejer on 24/07/18.
//  Copyright © 2018 Simon Elhoej Steinmejer. All rights reserved.
//

import UIKit

class ViewController: UITableViewController
{
    let pets = ["Dog", "Cat", "Bird", "Monkey", "Snake"]
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Pets"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        let pet = pets[indexPath.row]
        cell.textLabel?.text = pet
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pets.count
    }
    
    

}









