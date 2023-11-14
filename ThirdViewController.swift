//
//  ThirdViewController.swift
//  Anjali project final
//
//  Created by Student on 16/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//
import UIKit
import Foundation
import AVFoundation

var pdata = String()
var pdata2 = String()

class ThirdViewController: UIViewController {
  
    @IBOutlet weak var myTable: UITableView!
    var cellIndexPath: IndexPath = IndexPath(row: 0, section: 0)
   
    var value:Int32 = 0
    var segment1Data: [TicketData] = []
    var segment2Data: [TicketData] = []
    var segment3Data: [TicketData] = []
    var selectedSegmentData: [TicketData] = []
    var player: AVAudioPlayer = AVAudioPlayer()
    @IBOutlet weak var imgview1: UIImageView!
        override func viewDidLoad() {
            super.viewDidLoad()


            do {
                let audioPath = Bundle.main.path(forResource: "onClick", ofType: "wav")
                try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
            }
            catch{
                
            }
            
            let Cc = MyTableViewCell()
          //  let lbl = Cc.getLabelOutlet()
            
//            lbl.text = tN
            myTable.dataSource =  self
            segment1Data = [
                TicketData(tName: pdata, tName2 : pdata2, tPrice: 399, tPhoto: "b1"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 499, tPhoto: "b2"),
               TicketData(tName: pdata,tName2 :pdata2, tPrice: 599, tPhoto: "b3"),
              TicketData(tName: pdata,tName2 :pdata2, tPrice: 699, tPhoto: "b4"),
               TicketData(tName: pdata, tName2 :pdata2,tPrice: 799, tPhoto: "b2"),
               TicketData(tName: pdata, tName2 :pdata2,tPrice: 899, tPhoto: "b1"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 999, tPhoto: "b3"),
              TicketData(tName: pdata, tName2 :pdata2,tPrice: 1099, tPhoto: "b4"),
            ]
            segment2Data = [
                TicketData(tName: pdata,tName2 :pdata2, tPrice: 2999, tPhoto: "T1"),
                TicketData(tName: pdata,tName2 : pdata2, tPrice: 3999, tPhoto: "T2"),
                TicketData(tName: pdata,tName2 : pdata2, tPrice: 4999, tPhoto: "T3"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 5999, tPhoto: "T4"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 6999, tPhoto: "T2"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 7999, tPhoto: "T3"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 6999, tPhoto: "T1"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 7999, tPhoto: "T4"),
                            ]
            segment3Data = [
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 2999, tPhoto: "F1"),
                TicketData(tName: pdata,tName2 :pdata2, tPrice: 3999, tPhoto: "F2"),
                TicketData(tName: pdata,tName2 :pdata2,tPrice: 4999, tPhoto: "F3"),
                TicketData(tName: pdata,tName2: pdata2, tPrice: 5999, tPhoto: "F5"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 6999, tPhoto: "F1"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 7999, tPhoto: "F2"),
                TicketData(tName: pdata, tName2 :pdata2,tPrice: 6999, tPhoto: "F3"),
                TicketData(tName: pdata, tName2 : pdata2, tPrice: 7999, tPhoto: "F5"),
                            ]
            selectedSegmentData = segment1Data
            myTable.dataSource = self
            myTable.delegate = self
            myTable.reloadData()
            
        }
    var BusImage : [UIImage] = [
        
      UIImage(named: "b1")!,
      UIImage(named: "b2")!,
      UIImage(named: "b3")!,
      UIImage(named: "b4")!,
      UIImage(named: "b1")!,
      
    ]
    
    var TrainImage : [UIImage] = [
        
      UIImage(named: "T1")!,
      UIImage(named: "T2")!,
      UIImage(named: "T3")!,
      UIImage(named: "T4")!,
      UIImage(named: "T1")!,
      
    ]
    var FlightImage : [UIImage] = [
        
      UIImage(named: "F1")!,
      UIImage(named: "F2")!,
      UIImage(named: "F3")!,
      UIImage(named: "F5")!,
      UIImage(named: "F1")!,
      
    ]
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
        @IBAction func segmentBtn(_ sender: Any) {
            player.play()
            switch segmentedControl.selectedSegmentIndex{
            case 0:
                player.play()
                player.play()
                selectedSegmentData = segment1Data
                imgview1.animationImages = BusImage
                imgview1.animationDuration = 3
                imgview1.startAnimating()
                player.play()
            case 1:
                player.play()
                selectedSegmentData = segment2Data
                imgview1.animationImages = TrainImage
                imgview1.animationDuration = 3
                imgview1.startAnimating()
                player.play()
                
            case 2:
                player.play()
                selectedSegmentData = segment3Data
                imgview1.animationImages = FlightImage
                imgview1.animationDuration = 3
                imgview1.startAnimating()
                player.play()
            default:
                break
            }
            myTable.reloadData()

        }
}

extension ThirdViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        player.play()
        return selectedSegmentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        player.play()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        
        cell.ticketimg.image = UIImage(named: selectedSegmentData[indexPath.row].ticketPhoto)
        cell.ticketnamee.text = selectedSegmentData[indexPath.row].ticketName
        cell.ticketnamee2.text = selectedSegmentData[indexPath.row].ticketDest
        cell.ticketpricee.text = String(selectedSegmentData[indexPath.row].ticketPrice)

        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        player.play()
        
        value = selectedSegmentData[indexPath.row].ticketPrice
        let alertTitle = "your Booking details"
        let message = "From: \(pdata) \n To: \(pdata2) "
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Add" , style: .default, handler: { action in
            self.performSegue(withIdentifier: "4th", sender: nil)
        }))
        present(alert, animated: true, completion: nil)

        alert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: nil))
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "4th"{
            var destObj = segue.destination as! FourViewController
            destObj.sourses1 = pdata
            destObj.destinationd1 = pdata2
            destObj.ticprice = value
        }
    }
    }

  
