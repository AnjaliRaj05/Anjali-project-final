//
//  ticket.swift
//  Anjali project final
//
//  Created by Student on 18/10/23.
//  Copyright © 2023 student.xyz. All rights reserved.
//

import Foundation
class TicketData{
  //  static let shared = TicketData()
 var ticketName:String!
 var ticketDest:String!
 var ticketPrice:Int32!
 var ticketPhoto:String!
    
    init(tName:String,tName2:String,tPrice:Int32,tPhoto:String){
        ticketName = tName
        ticketDest = tName2
        ticketPrice = tPrice
        ticketPhoto = tPhoto
    }
    
    
}
