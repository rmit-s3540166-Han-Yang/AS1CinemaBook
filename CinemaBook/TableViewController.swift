//
//  TableViewController.swift
//  CinemaBook
//
//  Created by Han on 27/8/17.
//  Copyright © 2017 Han. All rights reserved.
//

import UIKit

struct cellData{
    let cell : Int!
    let text : String!
    let image : UIImage!
    
}

class TableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath) -> UITableViewCell{
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        <#code#>
    }
}
