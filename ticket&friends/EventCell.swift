//
//  EventCell.swift
//  ticket&friends
//
//  Created by Sanjay Shrestha on 9/27/16.
//  Copyright © 2016 ticketandfriends. All rights reserved.
//

import Foundation
import UIKit



class EventViewCell: UITableViewCell{
    
    @IBOutlet weak var eventImage: UIImageView!
    
    @IBOutlet weak var eventTitle: UILabel!
    
    @IBOutlet weak var eventDateTime: UILabel!
    
    @IBOutlet weak var eventLocation: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}
