//
//  CustomNavBar.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 21/06/24.
//

import SwiftUI

struct CustomNavBar: View {
    var title: String
    var isBackButton: Bool
    var rightButtonIcon: String
    var rightButtonAction: (() -> Void)?

    var body: some View {
        Group {
            ZStack {
                Rectangle()
                    .foregroundStyle(.back)
                    .frame(height: 100)

                HStack {
                    HStack(spacing: 0) {
                        if isBackButton {
                            NavBarElement.backButton()
                                .padding(.leading)
                        }

                        NavBarElement.title(title)
                    }

                    Spacer()

                    NavBarElement.button(iconName: rightButtonIcon) {
                        rightButtonAction?()
                    }
                }
                .frame(height: 100, alignment: .bottom)
            }
        }
        .frame(height: 100, alignment: .bottom)
    }
}

#Preview {
    CustomNavBar(title: "Контакты", isBackButton: true, rightButtonIcon: "plus")
}
