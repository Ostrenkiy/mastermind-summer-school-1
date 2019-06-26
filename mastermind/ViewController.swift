//
//  ViewController.swift
//  mastermind
//
//  Created by Ostrenkiy on 27/06/2019.
//  Copyright © 2019 Ostrenkiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var wrongPositionCountLabel: UILabel!
    @IBOutlet weak var correctPositionCountLabel: UILabel!
    
    var targetNumber = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tryPressed(_ sender: Any) {
        guard let text = numberTextField.text, text.count == targetNumber.count else {
            return
        }
        
        var correctPositionCnt = 0
        var wrongPositionCnt = 0
        //TODO: Check if text is only numbers & there are 4 digits
        for index in 0...3 {
            if targetNumber.contains(text[index]) {
                if text[index] == targetNumber[index] {
                    correctPositionCnt += 1
                } else {
                    wrongPositionCnt += 1
                }
            }
        }
        
        wrongPositionCountLabel.text = "\(wrongPositionCnt) цифр угаданы на неверной позиции"
        correctPositionCountLabel.text = "\(correctPositionCnt) цифр угаданы на верной позиции"
    }
}

extension String {
    subscript (i: Int) -> Character {
        get {
            let index = self.index(startIndex, offsetBy: i)
            return self[index]
        }
    }
}
