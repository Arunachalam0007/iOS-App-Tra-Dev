//
//  TableViewCell.swift
//  TableViewLearning
//
//  Created by ArunSha on 22/03/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var tbImagView: UIImageView!
    @IBOutlet weak var tbCellLabelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
