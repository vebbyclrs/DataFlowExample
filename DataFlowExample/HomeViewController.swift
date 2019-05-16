//
//  HomeViewController.swift
//  DataFlowExample
//
//  Created by Vebby Clarissa on 16/05/19.
//  Copyright © 2019 Vebby Clarissa. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var name:String! //yakin bakal ada nama yang di passing tp belum tau apa
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set label ke penampungnya; value get from ViewController row 36
        nameLabel.text = name

        // Do any additional setup after loading the view.
    }
}
