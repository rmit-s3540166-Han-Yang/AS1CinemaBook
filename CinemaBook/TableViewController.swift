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
    //let text2 : String!
    let image : UIImage!
    
}
var arrayOfCellData = [cellData]()

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //let list = ["Milk","Honey"]
   // public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
     //   return(list.count)
    //}
    


   // public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
      //  let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
       // cell.textLabel?.text = list[indexPath.row]
      //  return(cell)
    //}

   // var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
            super.viewDidLoad()
    
        arrayOfCellData = [cellData(cell : 1, text : "Test Movie", image : #imageLiteral(resourceName: "Capture1"))]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //if arrayOfCellData[indexPath.row].cell == 1{
      //  let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            cell.movieTitle.text = arrayOfCellData[indexPath.row].text
            cell.movieImage.image = arrayOfCellData[indexPath.row].image
            //cell.movieText.text = arrayOfCellData[indexPath.row].text2
           
            return cell
        //}else{
            //let cell = Bundle.main.loadNibNamed("TableViewCell1", owner: self, options: nil)?.first as! TableViewCell1
            //cell.movieTitle.text = arrayOfCellData[indexPath.row].text
           // cell.movieImage.image = arrayOfCellData[indexPath.row].image
            //cell.movieText.text = arrayOfCellData[indexPath.row].text
            
           // return cell
        //}
   // }
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //if arrayOfCellData[indexPath.row].cell == 1{
            return 250
        //}else{
      //      return 125
        //}
    }
}
}
