//
//  RecapTableViewCell.swift
//  Pinterest
//
//  Created by Joe Wijoyo on 1/19/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class RecapTableViewCell: UITableViewCell {

  @IBOutlet var recapImage: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
