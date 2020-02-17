//
//  TitleAndValueCell.swift
//  SWCharactersPractice
//
//  Created by Mihail Barinov on 17/02/2020.
//  Copyright © 2020 Mihail Barinov. All rights reserved.
//

import UIKit

protocol TitleAndValueCellDelegate: class {
    func actionButtonTapped()
}

class TitleAndValueCell: UIView {
    
    weak var delegate: TitleAndValueCellDelegate!
    let cornerRadius: CGFloat = 10.0
    let borderWidth: CGFloat = 1.0
    
    @IBOutlet var TitleLabel: UILabel!
    @IBOutlet var TextLabel: UILabel!
    @IBOutlet var ActionButton: UIButton!
    
    @IBAction func ActionButtonPressed(_ sender: Any) {
        delegate.actionButtonTapped()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        ActionButton.layer.cornerRadius = cornerRadius
        ActionButton.layer.borderWidth = borderWidth
    }
    
    public func setData(title: String, text: String) {
        TitleLabel.text = title
        TextLabel.text = text
    }
}
