//
//  MyTableViewCell.swift
//  Anjali project final
//
//  Created by Student on 18/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit


class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ticketimg: UIImageView!
    
    @IBOutlet weak var ticketnamee: UILabel!
    
    @IBOutlet weak var ticketnamee2: UILabel!
    
    @IBOutlet weak var ticketpricee: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
     
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
    

}
