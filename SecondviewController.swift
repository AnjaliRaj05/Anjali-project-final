//
//  SecondviewController.swift
//  Anjali project final
//
//  Created by Student on 16/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import UIKit
import AVFoundation
class SecondviewController: UIViewController {

    @IBOutlet weak var emaillbl: UITextField!
    @IBOutlet weak var passwdlbl: UITextField!
    @IBOutlet weak var wlcmlbl: UILabel!
    
    var users:[User] = [
       User(email: "payal@gmail.com", password: "payal"),
       User(email: "yuvi123@gmail.com", password: "yuvi"),
       User(email: "kirti@gmail.com", password: "123"),
       User(email: "harshu123@gmail.com", password: "harhsu")
     ]
    var player: AVAudioPlayer = AVAudioPlayer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do {
            let audioPath = Bundle.main.path(forResource: "onClick", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            
        }
        
        
    }
    @IBAction func loginbtn(_ sender: Any) {
        player.play()
        let enteredEmail = emaillbl.text
              let enteredPass = passwdlbl.text
              
              if let user = users.first(where: {$0.email == enteredEmail && $0.password == enteredPass}){
                  print("Login successfully")
                 
                  performSegue(withIdentifier: "sourcesegue", sender: nil)
              }
              else
              {
                  showAlert(message: "Please enter the correct email and password")
              }
          }
          
    @IBAction func signupback(_ sender: Any) {
        performSegue(withIdentifier: "goback", sender: nil)
    }
    
          func showAlert(message:String)
          {
              let alrt = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
              alrt.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
              present(alrt, animated: true, completion: nil)
        
    }
    
    
    
}
