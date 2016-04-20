//
//  Player.swift
//  Ratings
//
//  Created by André Ricardo de Souza Guedes on 20/04/16.
//  Copyright © 2016 André Ricardo de Souza Guedes. All rights reserved.
//

import UIKit

struct Player {
    var name: String?
    var game: String?
    var rating: Int
    
    init(name: String?, game: String?, rating: Int) {
        self.name = name
        self.game = game
        self.rating = rating
    }
}
