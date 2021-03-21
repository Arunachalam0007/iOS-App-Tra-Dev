//
//  CustomTableViewCell.swift
//  Tableview
//
//  Created by ArunSha on 21/03/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak  var leftImage : UIImageView!
    @IBOutlet weak  var rightImage : UIImageView!
    @IBOutlet weak  var centerLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
