//
//  FirstViewController.swift
//  ticket&friends
//
//  Created by Sanjay Shrestha on 9/27/16.
//  Copyright © 2016 ticketandfriends. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    let events = [["event1", "Adrian Pradhan and Friends", "OCT 27, 6PM", "Warfield, San Francisco"], ["event2", "Diplo and Friends", "OCT 07, 9PM", "Warfield, San Francisco"], ["event3", "Kygo and Friends", "OCT 27, 6PM", "Greek Theartre, Berkeley"], ["event4", "Meeting", "OCT 27, 6PM", "Golden Gate, San Francisco"], ["event5", "Meetup", "OCT 07, 6PM", "SMC, Moraga"]]
    
    
    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell") as! EventViewCell
        let event = events[indexPath.row]
        cell.eventImage.image = UIImage(named: event[0])
        cell.eventTitle.text = event[1]
        cell.eventDateTime.text = event[2]
        cell.eventLocation.text = event[3]
        return cell
        
    }
}

