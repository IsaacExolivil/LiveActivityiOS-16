//
//  Starbucks.swift
//  Starbucks
//
//  Created by Jose Isaac on 12/08/22.
//

import WidgetKit
import SwiftUI
import Intents

@main
struct OrdenStatus: Widget{
    var body: some WidgetConfiguration{
        ActivityConfiguration(attributesType: OrdenAtributos.self) { context in
            
            
            //Live activity
            ZStack{
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .fill(Color("Green").gradient)
                
                VStack{
                    HStack{
                        Image("logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        
                        Text("Tu orden fue recibida")
                            .foregroundColor(.white.opacity(0.6))
                            .frame(maxWidth: .infinity,alignment: .leading)
                        
                        
                        HStack(spacing: -2) {
                            ForEach(
                        }
                        
                    }
                }
                .padding(15)
            }
        }
    }
}
