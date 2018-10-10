//
//  DetailsViewController.swift
//  personInfo
//
//  Created by Tianxia Dong on 05/02/2018.
//  Copyright © 2018 Tianxia Dong. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    var personData:person!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //comminications with outlets
        nameLabel.text = personData.name
        phoneLabel.text = personData.phone
        addressLabel.text = personData.address
        urlLabel.text = personData.url
        
        //where the data comes from? Being pushed from the first controller
        
        
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
