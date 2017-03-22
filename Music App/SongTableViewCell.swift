//
//  SongTableViewCell.swift
//  Music App
//
//  Created by Pansit Wattana on 3/22/17.
//  Copyright © 2017 Pansit Wattana. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var queueLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
