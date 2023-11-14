////
////  soureceViewController.swift
////  Anjali project final
////
////  Created by Guest on 30/10/23.
////  Copyright © 2023 student.xyz. All rights reserved.
////
//
//import UIKit
//import AVFoundation
//class soureceViewController: UIViewController,UITextFieldDelegate {
//
//
//    @IBOutlet weak var datepicker: UILabel!
//
//    @IBOutlet weak var sourcefield: UITextField!
//
//    @IBOutlet weak var destinationfield: UITextField!
//    let sourceData = ["Delhi","Patna","Punjab","Kolakta","Banglore"]
//    let destinationData = ["Patna","Delhi","Punjab","Kolakta","Banglore"]
//
//
//    @IBOutlet weak var datePicker: UIDatePicker!
//
//
//    @IBOutlet weak var sourcePicker: UIPickerView!
//    @IBOutlet weak var destinationPicker: UIPickerView!
//    var sourcepickerView = UIPickerView()
//    var destinationpickerView = UIPickerView()
//    var player: AVAudioPlayer = AVAudioPlayer()
//    override func viewDidLoad() {
//
//        do {
//            let audioPath = Bundle.main.path(forResource: "notification sound", ofType: "wav")
//            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
//        }
//        catch{
//
//        }
//        //picker overiding
//        sourcefield.delegate = self
//        destinationfield.delegate = self
//        super.viewDidLoad()
//        sourcefield.inputView = sourcepickerView
//        destinationfield.inputView = destinationpickerView
//        sourcePicker.delegate = self
//        sourcePicker.dataSource = self
//        destinationPicker.delegate = self
//        destinationPicker.dataSource = self
//        sourcePicker.tag = 1
//        destinationPicker.tag = 2
//
//        let imgvw = UIImageView(frame: CGRect(x: 0, y: 0,width: 500, height: 320))
//        imgvw.contentMode = .scaleAspectFill
//        imgvw.clipsToBounds = true
//        imgvw.image = UIImage(named: "W2")
//        view.addSubview(imgvw)
//        datePicker.datePickerMode = .dateAndTime
//
//
//    }
//
//
//
//    @IBAction func datepickervaluechanged(_ sender: UIDatePicker) {
//        player.play()
//
//
//    }
//
//    @IBAction func searchbtn(_ sender: Any) {
//        player.play()
//        pdata = sourcefield.text!
//        pdata2 = destinationfield.text!
//
//
//
//        if sourcefield.text != "" {
//            performSegue(withIdentifier: "sourceseguenextpart", sender: nil)
//        }
//        if destinationfield.text != "" {
//
//            performSegue(withIdentifier: "sourceseguenextpart", sender: nil)
//        }
//
//
//    }
//
//
//    }
//
//extension soureceViewController: UIPickerViewDelegate, UIPickerViewDataSource {
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        switch sourcePicker.tag {
//        case 1:
//            return sourceData.count
//        case 2:
//            return destinationData.count
//        default:
//            return 1
//        }
//
//    }
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        switch pickerView.tag {
//        case 1:
//            return sourceData[row]
//        case 2:
//            return destinationData[row]
//        default:
//            return "Data not Found"
//        }
//
//    }
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        switch  pickerView.tag{
//        case 1:
//            sourcefield.text = sourceData[row]
//            if(sourcefield.text == destinationfield.text)
//            {
//
//            }
//        case 2:
//            destinationfield.text = destinationData[row]
//        default:
//            return
//        }
//
//}
//
//
//}
//
//

import UIKit
import AVFoundation

class soureceViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var datepicker: UILabel!
    @IBOutlet weak var sourcefield: UITextField!
    @IBOutlet weak var destinationfield: UITextField!

    let sourceData = ["Delhi", "Patna", "Punjab", "Kolkata", "Bangalore"]
    let destinationData = ["Patna", "Delhi", "Punjab", "Kolkata", "Bangalore"]

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var sourcePicker: UIPickerView!
    @IBOutlet weak var destinationPicker: UIPickerView!
    var sourcepickerView = UIPickerView()
    var destinationpickerView = UIPickerView()
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        do {
            let audioPath = Bundle.main.path(forResource: "notification sound", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        } catch {
            // Handle audio player setup error
        }

        sourcefield.delegate = self
        destinationfield.delegate = self
        super.viewDidLoad()
        sourcefield.inputView = sourcepickerView
        destinationfield.inputView = destinationpickerView
        sourcePicker.delegate = self
        sourcePicker.dataSource = self
        destinationPicker.delegate = self
        destinationPicker.dataSource = self
        sourcePicker.tag = 1
        destinationPicker.tag = 2

        let imgvw = UIImageView(frame: CGRect(x: 0, y: 0, width: 500, height: 320))
        imgvw.contentMode = .scaleAspectFill
        imgvw.clipsToBounds = true
        imgvw.image = UIImage(named: "W2")
        view.addSubview(imgvw)
        datePicker.datePickerMode = .dateAndTime
    }

    @IBAction func datepickervaluechanged(_ sender: UIDatePicker) {
        player.play()
    }

    @IBAction func searchbtn(_ sender: Any) {
        player.play()
        pdata = sourcefield.text!
        pdata2 = destinationfield.text!
        if sourcefield.text == destinationfield.text {
            showAlert()
        }

        if sourcefield.text != "" {
            performSegue(withIdentifier: "sourceseguenextpart", sender: nil)
        }
        if destinationfield.text != "" {
            performSegue(withIdentifier: "sourceseguenextpart", sender: nil)
        }
    }

    func showAlert() {
        let alrt = UIAlertController(title: "Error", message: "Source and destination can't be the same", preferredStyle: .alert)
        alrt.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alrt, animated: true, completion: nil)
    }
}

extension soureceViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch sourcePicker.tag {
        case 1:
            return sourceData.count
        case 2:
            return destinationData.count
        default:
            return 1
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView.tag {
        case 1:
            return sourceData[row]
        case 2:
            return destinationData[row]
        default:
            return "Data not Found"
        }
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView.tag {
        case 1:
            sourcefield.text = sourceData[row]
            if sourcefield.text == destinationfield.text {
                // Handle the case where source and destination are the same
            }
        case 2:
            destinationfield.text = destinationData[row]
        default:
            return
        }
    }
}
