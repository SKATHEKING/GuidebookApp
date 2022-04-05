//
//  PlaceTableViewCell.swift
//  GuidebookApp
//
//  Created by Mateus Goncalves De Ouro on 22/03/2022.
//

import UIKit

class PlaceTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var shadowView: UIView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var placeImageView: UIImageView!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cardView.layer.cornerRadius = 5
        shadowView.layer.cornerRadius = 5
        shadowView.layer.shadowColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.5)
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 5
    }
    
    func setCell(_ p :Place ){
        
        if let image =  p.imageName{
        self.placeImageView.image = UIImage(named: image  )
        }
        self.label.text = p.name
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
