//
//  CustomTabBar.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 21/06/24.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Tab

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.back)
                .frame(height: 84)
                .shadow(color: .text.opacity(0.04), radius: 12, x: 0, y: -1)

            HStack {
                ForEach(Tab.allCases, id: \.self) { tab in
                    Image(tab.iconName)
                        .foregroundStyle(selectedTab == tab ? .accent : .text)
                        .onTapGesture {
                            selectedTab = tab
                        }
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 32)
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.contacts))
}
