//
//  CircleView.swift
//  TrafficLight
//
//  Created by Роман Бакаев on 22.05.2023.
//

import SwiftUI

struct CircleView: View {
    let color:Color
    
        
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100,height: 100)
            .overlay(Circle()
                .stroke(Color.white,lineWidth: 4)
                .shadow(color:color, radius: 20)
                
                     )
            
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color:.green)
           
    }
}

