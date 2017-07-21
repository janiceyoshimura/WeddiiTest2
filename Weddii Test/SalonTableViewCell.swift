//
//  SalonTableViewCell.swift
//  Weddii Test
//
//  Created by Janice Yoshimura on 7/21/17.
//  Copyright © 2017 Janice Yoshimura. All rights reserved.
//

import UIKit

class SalonTableViewCell: UITableViewCell {
   

    @IBOutlet weak var salonName: UILabel!
    @IBOutlet weak var salonAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
