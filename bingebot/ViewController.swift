//
//  ViewController.swift
//  bingebot
//
//  Created by Andrey Kandyba on 17/03/2019.
//  Copyright © 2019 Andrey Kandyba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var randomShowLabel: UILabel!
    @IBOutlet weak var bingebotSpokenLabel: UILabel!
    @IBOutlet weak var addShowTextField: UITextField!
    @IBOutlet weak var addShowBtn: UIButton!
    @IBOutlet weak var randomShowStackView: UIStackView!
    @IBOutlet weak var addShowStackView: UIStackView!
    @IBOutlet weak var showStackView: UIStackView!
    
    var show: [String] = []
    
    func updateShowLabel() {
        showLabel.text = show.joined(separator: ", ")
    }
    
    @IBAction func randomBingeShowBtnWasPressed(_ sender: Any) {
        randomShowLabel.text = show.randomElement()
        randomShowLabel.isHidden = false
        bingebotSpokenLabel.isHidden = false
    }
    
    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        guard let showName = addShowTextField.text else {return}
        show.append(showName)
        updateShowLabel()
        addShowTextField.text = ""
        showStackView.isHidden = false
        if show.count > 1 {
            randomShowStackView.isHidden = false
            bingebotSpokenLabel.isHidden = true
            randomShowLabel.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showStackView.isHidden = true
        randomShowStackView.isHidden = true
    }
    
    
}

