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
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        arrayOfCellData = [cellData(cell : 1, text : "", image : #imageLiteral(resourceName: "Capture2 copy")),
        cellData(cell : 1, text : "", image : #imageLiteral(resourceName: "Capture2 copy")),
        cellData(cell : 1, text : "", image : #imageLiteral(resourceName: "Capture2 copy"))]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath) -> UITableViewCell{
        if arrayOfCellData[IndexPath.row].cell == 1{
            let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            
            cell.movieImage.image = arrayOfCellData[]
        }else{
            
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        <#code#>
    }
}
