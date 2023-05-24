//
//  ContentView.swift
//  TrafficLight
//
//  Created by Роман Бакаев on 22.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var titleButton = "Start"
    @State var redColor = Color.black
    @State var yellowColor = Color.black
    @State var greenColor = Color.black
    
    var body: some View {
         
        
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack {
                CircleView(color: redColor)
                CircleView(color: yellowColor)
                CircleView(color: greenColor)
                Spacer()
                
                Button(action: {startButtonPressed()}) {
                    Text("\(titleButton)")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding ()
                        .background (Color.blue)
                    .foregroundColor (.white)
                    .cornerRadius (10)
                    
            }
           
            }
        }
        
                
    }
   private func startButtonPressed(){
       if titleButton == "Start" {
           titleButton = "Next"
           redColor = .red
           
       }
       else if redColor == .red {
           yellowColor = .yellow
           redColor = .black
       }
       else if yellowColor == .yellow {
           greenColor = .green
           yellowColor = .black
       }
       else if greenColor == .green {
           greenColor = .black
           redColor = .red
       }
       
       
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

