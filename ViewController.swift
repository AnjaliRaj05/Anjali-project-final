//
//  ViewController.swift
//  Anjali project final
//
//  Created by Student on 16/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var namefield: UITextField!
    @IBOutlet weak var emailfield: UITextField!
    @IBOutlet weak var phonefield: UITextField!
    @IBOutlet weak var passwordfield: UITextField!
    @IBOutlet weak var confirmpasswordfield: UITextField!
    @IBOutlet weak var button: UIButton!

    var users: [User] = [
        User(email: "anjali@gmail.com", password: "1234"),
        User(email: "yuvi123@gmail.com", password: "yuvi"),
        User(email: "kirti@gmail.com", password: "123"),
        User(email: "shalu@gmail.com", password: "shalu")
    ]
    var player: AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let audioPath = Bundle.main.path(forResource: "onClick", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            
        }
        
        namefield.delegate = self
        emailfield.delegate = self
        phonefield.delegate = self
        passwordfield.delegate = self
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == namefield {
            emailfield.becomeFirstResponder()
        } else if textField == emailfield {
            textField.resignFirstResponder()
        }
        return true
    }

    @IBAction func signupbtn(_ sender: Any) {
        player.play()
        
        if let existingUser = users.first(where: { $0.email == emailfield.text }) {
            showAlert(message: "Email is already registered. Please log in with your password.")
            return
        }

        if emailfield.text?.isEmpty == true || namefield.text?.isEmpty == true || phonefield.text?.isEmpty == true || passwordfield.text?.isEmpty == true {
            showAlert(message: "Please fill in all fields")
            return
        }

        // Validate email format
        guard let email = emailfield.text, email.isValidEmail() else {
            showAlert(message: "Please enter a valid email address")
            return
        }

        // Validate mobile number 
        guard let phoneNumber = phonefield.text, phoneNumber.isValidPhoneNumber() else {
            showAlert(message: "Please enter a valid phone number")
            return
        }

        // Validate password and confirm password match

        // All validations passed, perform the segue
        performSegue(withIdentifier: "signuppp", sender: nil)
    }

    func showAlert(message: String) {
        player.play()
        let alrt = UIAlertController(title: "Validation Error", message: message, preferredStyle: .alert)
        alrt.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alrt, animated: true, completion: nil)
    }
    @IBAction func clickHere(_ sender: Any) {
        player.play()
        performSegue(withIdentifier: "2nd", sender: nil)
    }
}



extension String {
    func isValidEmail() -> Bool {
        let emailRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegx).evaluate(with: self)
    }

    func isValidPhoneNumber() -> Bool {
        let phoneRegx = "^\\d{10}$"
        return NSPredicate(format: "SELF MATCHES %@", phoneRegx).evaluate(with: self)
    }
}

