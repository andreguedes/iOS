//
//  PlayerCellTableViewCell.swift
//  Ratings
//
//  Created by André Ricardo de Souza Guedes on 21/04/16.
//  Copyright © 2016 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var player: Player! {
        didSet {
            nameLabel.text = player.name
            gameLabel.text = player.game
            ratingImageView.image = imageForRating(player.rating)
        }
    }
    
    func imageForRating(rating: Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
