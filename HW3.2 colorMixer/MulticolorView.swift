//
//  MulticolorView.swift
//  HW3.2 colorMixer
//
//  Created by Dmitry Tokarev on 15.12.2020.
//

import SwiftUI

struct MulticolorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(width: 380, height: 120)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
    }
}

struct MulticolorView_Previews: PreviewProvider {
    static var previews: some View {
        MulticolorView(red: 80.0, green: 100.0, blue: 150.0)
    }
}
