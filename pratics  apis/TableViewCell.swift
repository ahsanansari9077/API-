//
//  TableViewCell.swift
//  pratics  apis
//
//  Created by AHSAN on 06/02/2020.
//  Copyright © 2020 AHSAN. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var namelbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
