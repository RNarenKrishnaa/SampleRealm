//
//  TasksListCell.swift
//  SampleInRealm
//
//  Created by naren on 8/31/17.
//  Copyright © 2017 naren. All rights reserved.
//

import UIKit

class TasksListCell: UITableViewCell {

    @IBOutlet weak var lblTaskCell: UILabel!
    
    @IBOutlet weak var lblTaskDate: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
