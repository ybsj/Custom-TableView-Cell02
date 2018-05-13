//
//  FoodStoreTableViewCell.swift
//  Custom TableView Cell
//
//  Created by 김종현 on 2018. 5. 13..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class FoodStoreTableViewCell: UITableViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView! {
        didSet {
            thumbnailImageView.layer.cornerRadius = 10.0
            thumbnailImageView.clipsToBounds = true
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
