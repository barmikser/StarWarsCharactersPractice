//
//  CharacterInfoVC.swift
//  SWCharactersPractice
//
//  Created by Mihail Barinov on 17/02/2020.
//  Copyright © 2020 Mihail Barinov. All rights reserved.
//

import UIKit

class CharacterInfoVC: UIViewController {
    
    let cornerRadius: CGFloat = 10.0
    let borderWidth: CGFloat = 1.0

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        backButton.layer.cornerRadius = cornerRadius
        backButton.layer.borderWidth = borderWidth
        
        //create and set all data in stackview
    }
}
