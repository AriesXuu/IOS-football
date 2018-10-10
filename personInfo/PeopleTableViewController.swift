//
//  PeopleTableViewController.swift
//  personInfo
//
//  Created by Yeqi Xu on 13/02/2018.
//  Copyright © 2018 Tianxia Dong. All rights reserved.
//

import UIKit

class PeopleTableViewController: UITableViewController, UISearchBarDelegate {
    
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    //get the model data
    let people = Member(fromXMLFile: "playerdata.xml")
    var peopleData : [Player]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // get the data
        peopleData = people.getpeople()
        
        // make the title
        self.title = "Real Madrid"
        
        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return peopleData.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //get the person data for indexPath
        let personData = peopleData[indexPath.row]
        
        // Configure the cell...
        cell.textLabel?.text = personData.name
        cell.detailTextLabel?.text = personData.position
        cell.imageView?.image = UIImage(named: personData.image)
        return cell
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            peopleData = people.getpeople()
            self.tableView.reloadData()
            
        }else{
            filtermethod(text: searchText)
        }
    }
    
    func filtermethod(text:String)
    {
        peopleData = peopleData.filter({ (Player) -> Bool in
            return Player.name.lowercased().contains(text.lowercased())
        })
        self.tableView.reloadData()
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
 
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        //get the indexPath for the selected cell
        let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell)
        
        // Get the new view controller using segue.destinationViewController.
        let destination = segue.destination as! ViewController
        // Pass the selected object to the new view controller.
        destination.personData = peopleData[(indexPath?.row)!]
    }
    

}
