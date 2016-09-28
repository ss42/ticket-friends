//
//  SettingsViewController.swift
//  ticket&friends
//
//  Created by Sanjay Shrestha on 9/27/16.
//  Copyright © 2016 ticketandfriends. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var settings = ["Account", "Be a Promoter?", "Help", "Contact Us", "About"]
    
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
extension SettingsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell")
        print(indexPath.row)
        cell?.textLabel?.text = settings[indexPath.row]
        return cell!
        
    }
}
