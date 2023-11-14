//////
//////  FourViewController.swift
//////  Anjali project final
//////
//////  Created by Student on 16/10/23.
//////  Copyright © 2023 student.xyz. All rights reserved.
//////
////import UIKit
////import AVFoundation
////class FourViewController: UIViewController {
////
////    var sourses1: String!
////    var destinationd1: String!
////    var ticprice: Int32!
////
////    var player: AVAudioPlayer = AVAudioPlayer()
////
////    @IBOutlet weak var sourcelbl: UITextField!
////    @IBOutlet weak var destinationlbl: UITextField!
////    @IBOutlet weak var pricelbl: UITextField!
////    @IBOutlet weak var pnamelbl: UITextField!
////
////    @IBOutlet weak var pagelbl: UITextField!
////    @IBOutlet weak var seatsegmentText: UILabel!
////    @IBOutlet weak var seatSegment: UISegmentedControl!
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        do {
////            let audioPath = Bundle.main.path(forResource: "notification sound", ofType: "wav")
////            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
////        }
////        catch{
////
////        }
////
////        let imgvew = UIImageView(frame: CGRect(x: 0, y: 0,width: 500, height: 300))
////        imgvew.contentMode = .scaleAspectFill
////        imgvew.clipsToBounds = true
////        imgvew.image = UIImage(named: "Bg3")
////        view.addSubview(imgvew)
////        sourcelbl.text = sourses1!
////        destinationlbl.text = destinationd1!
////        pricelbl.text = "\(ticprice!)"
////
////        seatsegmentText.text = "Ac"
////    }
////
////    @IBAction func Exit(_ sender: Any) {
////        performSegue(withIdentifier: "exit", sender: nil)
////    }
////
////    @IBAction func seatSegmentAction(_ sender: Any) {
////        switch seatSegment.selectedSegmentIndex {
////        case 0:
////            seatsegmentText.text = "Ac"
////        case 1:
////            seatsegmentText.text = "Non Ac"
////        default:
////            break
////        }
////    }
////    @IBAction func bookseat(_ sender: Any) {
////        player.play()
////        let alert = UIAlertController(title: "Welcome", message: "Do You want to confirm your seat?", preferredStyle: .alert)
////        alert
////
////            .addAction(UIAlertAction(title:"Cancel", style: .cancel, handler: {(action) in
////            self.performSegue(withIdentifier: "exit", sender: self)
////
////        }))
////        alert.addAction(UIAlertAction(title:"Confirm", style: .default, handler: {(action) in
////            self.performSegue(withIdentifier: "5th", sender: self)
////        }))
////
////        present(alert, animated: true, completion: nil)
////    }
////    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////        if segue.identifier == "5th" {
////            let destObj = segue.destination as! FifthViewController
////            destObj.name = pnamelbl.text!
////            destObj.age = pagelbl.text!
////            destObj.type = seatsegmentText.text!
////
////        }
////    }
////}
////
////
//
//import UIKit
//import AVFoundation
//
//class FourViewController: UIViewController {
//
//    var sourses1: String!
//    var destinationd1: String!
//    var ticprice: Int32!
//
//    var player: AVAudioPlayer = AVAudioPlayer()
//
//    @IBOutlet weak var sourcelbl: UITextField!
//    @IBOutlet weak var destinationlbl: UITextField!
//    @IBOutlet weak var pricelbl: UITextField!
//    @IBOutlet weak var pnamelbl: UITextField!
//
//    @IBOutlet weak var pagelbl: UITextField!
//    @IBOutlet weak var seatsegmentText: UILabel!
//    @IBOutlet weak var seatSegment: UISegmentedControl!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        do {
//            let audioPath = Bundle.main.path(forResource: "notification sound", ofType: "wav")
//            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
//        }
//        catch{
//
//        }
//
//        let imgvew = UIImageView(frame: CGRect(x: 0, y: 0,width: 500, height: 300))
//        imgvew.contentMode = .scaleAspectFill
//        imgvew.clipsToBounds = true
//        imgvew.image = UIImage(named: "Bg3")
//        view.addSubview(imgvew)
//        sourcelbl.text = sourses1!
//        destinationlbl.text = destinationd1!
//        pricelbl.text = "\(ticprice!)"
//
//        seatsegmentText.text = "Ac"
//    }
//
//    @IBAction func Exit(_ sender: Any) {
//        performSegue(withIdentifier: "exit", sender: nil)
//    }
//
//    @IBAction func seatSegmentAction(_ sender: Any) {
//        switch seatSegment.selectedSegmentIndex {
//        case 0:
//            seatsegmentText.text = "Ac"
//        case 1:
//            seatsegmentText.text = "Non Ac"
//        default:
//            break
//        }
//    }
//
//    @IBAction func bookseat(_ sender: Any) {
//        player.play()
//        // Validate that name and age fields are not empty and age is an integer
//        if let name = pnamelbl.text, let age = pagelbl.text, !name.isEmpty, !age.isEmpty, let ageValue = Int(age) {
//            let alert = UIAlertController(title: "Welcome", message: "Do you want to confirm your seat?", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
//                self.performSegue(withIdentifier: "exit", sender: self)
//            }))
//            alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { (action) in
//                self.performSegue(withIdentifier: "5th", sender: self)
//            }))
//            present(alert, animated: true, completion: nil)
//        } else {
//            let errorAlert = UIAlertController(title: "Error", message: "Name and age fields can't be empty, and age should be a valid integer.", preferredStyle: .alert)
//            errorAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            present(errorAlert, animated: true, completion: nil)
//        }
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "5th" {
//            let destObj = segue.destination as! FifthViewController
//            destObj.name = pnamelbl.text!
//            destObj.age = pagelbl.text!
//            destObj.type = seatsegmentText.text!
//        }
//    }
//}


import UIKit
import AVFoundation

class FourViewController: UIViewController, UITextFieldDelegate {

    var sourses1: String!
    var destinationd1: String!
    var ticprice: Int32!

    var player: AVAudioPlayer = AVAudioPlayer()

    @IBOutlet weak var sourcelbl: UITextField!
    @IBOutlet weak var destinationlbl: UITextField!
    @IBOutlet weak var pricelbl: UITextField!
    @IBOutlet weak var pnamelbl: UITextField!

    @IBOutlet weak var pagelbl: UITextField!
    @IBOutlet weak var seatsegmentText: UILabel!
    @IBOutlet weak var seatSegment: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let audioPath = Bundle.main.path(forResource: "notification sound", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {

        }

        let imgvew = UIImageView(frame: CGRect(x: 0, y: 0,width: 500, height: 300))
        imgvew.contentMode = .scaleAspectFill
        imgvew.clipsToBounds = true
        imgvew.image = UIImage(named: "Bg3")
        view.addSubview(imgvew)
        sourcelbl.text = sourses1!
        destinationlbl.text = destinationd1!
        pricelbl.text = "\(ticprice!)"

        seatsegmentText.text = "Ac"

        // Set the delegate for the text fields
        sourcelbl.delegate = self
        destinationlbl.delegate = self
        pricelbl.delegate = self
        pnamelbl.delegate = self
        pagelbl.delegate = self
    }

    @IBAction func Exit(_ sender: Any) {
        performSegue(withIdentifier: "exit", sender: nil)
    }

    @IBAction func seatSegmentAction(_ sender: Any) {
        switch seatSegment.selectedSegmentIndex {
        case 0:
            seatsegmentText.text = "Ac"
        case 1:
            seatsegmentText.text = "Non Ac"
        default:
            break
        }
    }

    @IBAction func bookseat(_ sender: Any) {
        player.play()
        // Validate that name and age fields are not empty and age is an integer
        if let name = pnamelbl.text, let age = pagelbl.text, !name.isEmpty, !age.isEmpty, let ageValue = Int(age) {
            let alert = UIAlertController(title: "Welcome", message: "Do you want to confirm your seat?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action) in
                self.performSegue(withIdentifier: "exit", sender: self)
            }))
            alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { (action) in
                self.performSegue(withIdentifier: "5th", sender: self)
            }))
            present(alert, animated: true, completion: nil)
        } else {
            let errorAlert = UIAlertController(title: "Error", message: "Name and age fields can't be empty, and age should be a valid integer.", preferredStyle: .alert)
            errorAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(errorAlert, animated: true, completion: nil)
        }
    }

    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//        return true
//    }
//
//    // Handle keyboard appearance
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//
//    }
//
//    // Handle keyboard disappearance
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        textField.resignFirstResponder()
//        self.view.endEditing(true)
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == pnamelbl{
            pagelbl.becomeFirstResponder()
        } else if
            
            textField == pagelbl {
                textField.resignFirstResponder()
            }
            
            return true;
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "5th" {
            let destObj = segue.destination as! FifthViewController
            destObj.name = pnamelbl.text!
            destObj.age = pagelbl.text!
            destObj.type = seatsegmentText.text!
        }
    }
}
