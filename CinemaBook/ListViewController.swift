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
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

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
    
}
