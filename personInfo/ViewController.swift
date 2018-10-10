//
//  ViewController.swift
//  personInfo
//
//  Created by Tianxia Dong on 05/02/2018.
//  Copyright © 2018 Tianxia Dong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var background: UIImageView!
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var personLabel: UILabel!
    
    var personData: Player!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         
        //populate the views with data/talk to the views
        personLabel.text = personData.name
        personImageView.image = UIImage(named: personData.image)!
        
        
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //test the segue
        if segue.identifier == "segue"{
            //get the destination controller
            let destination  = segue.destination as? DetailsViewController
            
            //push the data to it
            destination?.personData = self.personData
            
            
            
        }

    
    }


}

