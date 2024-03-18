//
//  TableViewCell.swift
//   Collapse tableview cells
//
//  Created by Karthiga on 18/03/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var toplabel: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
