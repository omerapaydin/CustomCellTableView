//
//  TableViewCell.swift
//  CustomCellTableView
//
//  Created by Ömer on 6.04.2025.
//

import UIKit



protocol TableViewHucreProtocol{
    func hucreUzerindekiButtonaTikla(indexPath: IndexPath)
}


class TableViewCell: UITableViewCell {

    @IBOutlet weak var textLabel1: UILabel!
    
    var hucreProtocol: TableViewHucreProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttons(_ sender: Any) {
        
        hucreProtocol?.hucreUzerindekiButtonaTikla(indexPath: indexPath!)
        
    }
}
