//
//  TableViewCell.swift
//  iQuiz
//
//  Created by seowoosuk on 11/3/15.
//  Copyright © 2015 Woosuk Seo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var quizLabel: UILabel!
    @IBOutlet weak var quizLabel2: UILabel!
    @IBOutlet weak var pictureView: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
