//
//  WebViewController.swift
//  personInfo
//
//  Created by Yeqi Xu on 06/02/2018.
//  Copyright © 2018 Tianxia Dong. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    
    var playerData: Player!
    

    @IBOutlet weak var web: UIWebView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        let url = URL(string: playerData.url)
        web.loadRequest(URLRequest(url: url!))
        
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
