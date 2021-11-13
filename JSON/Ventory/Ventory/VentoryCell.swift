//
//  VentoryCell.swift
//  Ventory
//
//  Created by Sayyid Maulana Khakul Yakin on 12/11/21.
//

import UIKit

class VentoryCell: UITableViewCell {

    @IBOutlet weak var ventoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(data: VentoryElement) {
        ventoryLabel.text = data.name
    }
    
}
