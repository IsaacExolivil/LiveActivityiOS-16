//
//  OrdenAtributos.swift
//  StarbucksLiveActivity
//
//  Created by Jose Isaac on 12/08/22.
//

import SwiftUI

//ActivityKit disponible para Xcode 14 beta 4
import ActivityKit

struct OrdenAtributos: ActivityAttributes {
    struct ContentState: Codable, Hashable {
        
        var status: Status = .received
        
    }
    
    var orderNumber: Int
    var orderItems: String
    
}

enum Status: String,CaseIterable,Codable,Equatable{
    case received = "shippingbox.fill"
    case progress = "person.bust"
    case ready = "takeoutbag.and.cup.and.straw.fill"
    
}


