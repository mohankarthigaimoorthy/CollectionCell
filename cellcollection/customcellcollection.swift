//
//  customcellcollection.swift
//  cellcollection
//
//  Created by Mohan K on 23/11/22.
//

import UIKit

class customcellcollection: UICollectionViewCell {
    
   
 
    @IBOutlet weak var cellimage: UIImageView!
    
    @IBOutlet weak var mainLabl: UILabel!
    
    func setLabel(label: String) {
        
        mainLabl.text = label
    }
}
