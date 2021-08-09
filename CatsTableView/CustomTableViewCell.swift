//
//  CustomTableViewCell.swift
//  CatsTableView
//
//  Created by Ana Lucia Fermino de O. Arine on 19/07/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var catImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
