//
//  NavBarElement.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 21/06/24.
//

import SwiftUI

struct NavBarElement {
    static func title(_ text: String) -> some View {
        Text(text)
            .font(Font.custom("SF Pro Display", size: 18))
            .fontWeight(.semibold)
            .foregroundStyle(.text)
            .padding()
    }

    static func backButton() -> some View {
        CustomBackButton()
    }

    static func button(iconName: String, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            Image(iconName)
                .foregroundStyle(.text)
                .padding()
        }
    }
}
