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
    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var nationalityLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var personData:Player!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //comminications with outlets
        nameLabel.text = personData.name
        positionLabel.text = personData.position
        heightLabel.text = personData.height
        weightLabel.text = personData.weight
        nationalityLabel.text = personData.nationality
        ageLabel.text = personData.age
        
        
    
        
        //where the data comes from? Being pushed from the first controller
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segue2"
        {
            let destination = segue.destination as? WebViewController
            destination?.playerData = self.personData
        }
    }
    

}
