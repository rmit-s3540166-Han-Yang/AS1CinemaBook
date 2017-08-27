//
//  ListViewController.swift
//  CinemaBook
//
//  Created by Han on 25/8/17.
//  Copyright © 2017 Han. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    let titles = ["Movies","Bookings","Contact"]
    var myIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ListViewController : UITableViewDataSource{
   
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.titles.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstLink", for: indexPath)
        cell.textLabel?.text = self.titles[indexPath.row]
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}
