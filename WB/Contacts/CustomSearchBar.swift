//
//  CustomSearchBar.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 20/06/24.
//

import SwiftUI

struct CustomSearchBar: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.searchBackground)
                .frame(height: 36)
                .cornerRadius(4)

            HStack(spacing: 8) {
                Image("search")

                Text("Search")
                    .font(Font.custom("SF Pro Display", size: 14))
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondaryText)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(8)
        }
        .padding(.horizontal)
    }
}


#Preview {
    CustomSearchBar()
}
