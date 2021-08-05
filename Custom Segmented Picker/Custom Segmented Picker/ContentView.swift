//
//  ContentView.swift
//  Custom Segmented Picker
//
//  Created by Nerimene on 5/8/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickedValue = "Home"
    
    var body: some View {
        HStack(spacing: 0){
            
            SegmentedBtn(title: "Home", image: "house.fill", pickedValue: $pickedValue)
            SegmentedBtn(title: "Settings", image: "gear", pickedValue: $pickedValue)
        }
        .background(Color.white)
        .clipShape(Capsule())
        // Shadows..
        // Top Shadow
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
        // Bottom Shadow
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)
        .padding(.horizontal,40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
