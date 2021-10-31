//
//  ViewController.swift
//  UITextField
//
//  Created by Fedor Donskov on 22.10.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var myTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createTextField()
        
        myTextField.delegate = self
  
    }
    //MARK: - CreateUI
    func createTextField() {
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        
        myTextField = UITextField(frame: textFieldFrame)
        myTextField.borderStyle = UITextField.BorderStyle.roundedRect
        myTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        myTextField.textAlignment = .center
        myTextField.placeholder = "I swift developer"
        myTextField.center = self.view.center
        view.addSubview(self.myTextField)
    }
    //MARK: - UITextFieldDelegate
        func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
            print("textFieldShouldBeginEditing = это я решаю можно ли редактировать")
            return true
        }
        func textFieldDidBeginEditing(_ textField: UITextField) {
            print("textFieldDidBeginEditing = внимание началось редактирование")
        }
            
        func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
            print("textFieldShouldEndEditing = внимание закончилось редактирование")
            return true
            }

        func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
            print("textFieldDidEndEditing")
        }

    
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            print("shouldChangeCharactersIn = вы ввели = \(string)")
            return true
        }

        func textFieldShouldClear(_ textField: UITextField) -> Bool {
            print("textFieldShouldClear = ты что-то очистил")
            return true
        }

        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            print("textFieldShouldReturn = хотите убрать клавиатуру?")
            if textField == myTextField {
                self.myTextField.resignFirstResponder()
            }
            return true
            }
}
    

