//
//  QuestTableViewCell.swift
//  NSTableView
//
//  Created by me on 27.10.16.
//  Copyright © 2016 ovmx. All rights reserved.
//

import UIKit

class QuestTableViewCell: UITableViewCell {

    @IBOutlet var questImageView: UIImageView!
    @IBOutlet var questNameLabel: UILabel!
   
    var quest: Quest! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        questImageView.image = UIImage(named: quest.imageName)
        questNameLabel.text = quest.name
    }
}
