


import UIKit
import AVFoundation

class FifthViewController: UIViewController {

    @IBOutlet weak var lblage: UILabel!
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblpnr: UILabel!
    @IBOutlet weak var lblSeatNo: UILabel!
    
    var name: String = ""
    var age: String = ""
    var type: String = ""
    var player: AVAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblname.text = name
        lblage.text = age
        lblType.text = type
        
        do {
            let audioPath = Bundle.main.path(forResource: "notification sound", ofType: "wav")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch {
            
        }
    }
    
    @IBAction func getTicket(_ sender: Any) {
        player.play()
        
        // Validate if age is an integer
        if let ageValue = Int(age) {
            // Age is a valid integer
            
            let randompnrNumber = Int.random(in: 1234567...9999999)
            lblpnr.text = "\(randompnrNumber)"
            
            let randowmseatNumber = Int.random(in: 1...79)
            lblSeatNo.text = "\(randowmseatNumber)"
            let alertTitle = "Ticket Details"
            let message = "Name: \(name) \nAge: \(ageValue) \nSeat Type: \(type) \nPnr No: \(randompnrNumber) \nSeat No: \(randowmseatNumber)"
            
            let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Go Back", style: .destructive, handler: { (action) in
                self.performSegue(withIdentifier: "last", sender: nil)
            }))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        } else {
            // Age is not a valid integer, show an error message
            let errorAlert = UIAlertController(title: "Error", message: "Please enter a valid age as an integer.", preferredStyle: .alert)
            errorAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(errorAlert, animated: true, completion: nil)
        }
    }
}
