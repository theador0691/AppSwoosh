//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Andrew Taylor on 13/09/2018.
//  Copyright © 2018 Andrew Taylor. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
