//
//  FinishGoalVC.swift
//  goalPost-app
//
//  Created by Jacob Duell on 12/18/20.
//

import UIKit

class FinishGoalVC: UIViewController,  UITextFieldDelegate {

    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalButton: UIButton!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
        pointsTextField.delegate = self
    }

    @IBAction func createGoalButtonWasPressed(_ sender: Any) {
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        pointsTextField.text = ""
        pointsTextField.textColor = .black
    }
    
}
