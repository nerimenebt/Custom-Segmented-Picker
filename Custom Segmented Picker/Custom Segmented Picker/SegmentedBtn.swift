//
//  SegmentedBtn.swift
//  Custom Segmented Picker
//
//  Created by Nerimene on 5/8/2021.
//

import SwiftUI

struct SegmentedBtn: View {
    var title: String
    var image: String
    @Binding var pickedValue: String
    @Namespace var animation
    
    var body: some View {
        Button {
            withAnimation(.spring()){
                pickedValue = title
            }
        } label: {
            Label {
                Text(title)
            } icon: {
                Image(systemName: image)
                    .font(.title2)
            }
            .foregroundColor(pickedValue == title ? .white : .black)
            .padding(.vertical, 10)
            .frame(maxWidth: .infinity)
            .background(
                ZStack {
                    if pickedValue == title {
                        Color.black
                            .clipShape(Capsule())
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
        }
    }
}

