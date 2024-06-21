//
//  ContactsView.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 12/06/24.
//

import SwiftUI

struct ContactsView: View {
    @StateObject private var viewModel = ContactsViewModel()

    var body: some View {
        VStack {

            ScrollView {
                VStack(spacing: 4) {
                    CustomSearchBar(searchText: $viewModel.searchText)
                        .padding(.top, 20)

                    ForEach(viewModel.filteredContacts, id: \.self) { contact in
                        ContactCell(contact: contact)
                        Divider()
                            .padding(.horizontal)
                    }
                }
            }
        }
        .padding(.horizontal, 12)
    }
}

#Preview {
    ContactsView()
}
