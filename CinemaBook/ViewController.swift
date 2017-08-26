//
//  ViewController.swift
//  CinemaBook
//
//  Created by Han on 25/8/17.
//  Copyright © 2017 Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var leftspace: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        //setupNavBarItems()
        // Do any additional setup after loading the view, typically from a nib.
    }
   // private func setupNavBarItems(){
       // _ = UIImageView(image: #imageLiteral(resourceName: "Capture1"))
      //  print(123)
    //}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func SideBar(_ sender: Any) {
        if self.leftspace.constant == 0{
            self.leftspace.constant = 118
        }else{
            self.leftspace.constant = 0
        }
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    }
}

