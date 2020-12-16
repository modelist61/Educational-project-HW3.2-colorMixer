//
//  ContentView.swift
//  HW3.2 colorMixer
//
//  Created by Dmitry Tokarev on 14.12.2020.
//

import SwiftUI

struct MainView: View {
    
    @State private var redValue = Double.random(in: 0...255)
    @State private var greenValue = Double.random(in: 0...255)
    @State private var blueValue = Double.random(in: 0...255)
    @State private var showAlert = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack {
                MulticolorView(red: redValue,
                               green: greenValue,
                               blue: blueValue)
                    .padding(.bottom, 40)
                
                SliderStack(rgbValue: $redValue,
                            alert: $showAlert,
                            lineColor: .red)
                SliderStack(rgbValue: $greenValue,
                            alert: $showAlert,
                            lineColor: .green)
                SliderStack(rgbValue: $blueValue,
                            alert: $showAlert)
                Spacer()
            }
            .padding()
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Wrong input value"),
                      message: Text("Only NUMBER in range 0 - 255"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
