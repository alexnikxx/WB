//
//  CustomSearchBar.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 20/06/24.
//

import SwiftUI

struct CustomSearchBar: View {
    @StateObject private var viewModel = ContactsViewModel()
    @Binding var searchText: String

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.searchBackground)
                .frame(height: 36)
                .cornerRadius(4)

            HStack(spacing: 8) {
                Image("search")

                TextField("Search", text: $searchText)
                    .font(Font.custom("SF Pro Display", size: 14))
                    .fontWeight(.semibold)
                    .foregroundStyle(.text)

                Spacer()

                if !searchText.isEmpty {
                    Button {
                        searchText = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.secondaryText)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(8)
        }
        .padding(.horizontal)
    }
}


#Preview {
    CustomSearchBar(searchText: .constant("Example"))
}
