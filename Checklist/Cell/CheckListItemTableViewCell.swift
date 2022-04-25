//
//  ChecklistItemTableViewCell.swift
//  Chechlist
//
//  Created by Сумая on 22/04/22.
//

import UIKit

class CheckListItemTableViewCell: UITableViewCell {
    
  
    @IBOutlet weak var check: UIImageView!
    @IBOutlet weak var tasck: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
