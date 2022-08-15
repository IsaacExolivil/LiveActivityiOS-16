//
//  ContentView.swift
//  StarbucksLiveActivity
//
//  Created by Jose Isaac on 12/08/22.
//

import SwiftUI
import WidgetKit
import ActivityKit

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                // MARK: inicializar la actividad
                Button("Empezar compra"){
                    addLiveAction()
                    
                }
                
            }
            .navigationTitle("Live ")
            .padding(15)
        }
    }
    func addLiveAction(){
        let orderAtributos = OrdenAtributos(orderNumber: 120, orderItems: "Cafe & Frape")
        let initialContentState = OrdenAtributos.ContentState()
        
        do{
            let activity = try Activity<OrdenAtributos>.request(attributes: orderAtributos, contentState: initialContentState)
            print("Activitu Added Successfully")
            print("Se agrego correctamente la actividad")
            
        }catch{
            print(error.localizedDescription)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
