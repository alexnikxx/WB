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
        VStack(spacing: 0) {
            CustomNavBar(title: "Контакты", isBackButton: false, rightButtonIcon: "plus")

            ScrollView {
                VStack(spacing: 4) {
                    CustomSearchBar(searchText: $viewModel.searchText)
                        .padding(.top, 20)

                    ForEach(viewModel.filteredContacts, id: \.self) { contact in
                        NavigationLink(destination: ContactDetailView(contact: contact)) {
                            ContactCell(contact: contact)
                        }
                        Divider()
                            .padding(.horizontal)
                    }
                }
            }
        }
        .ignoresSafeArea()
        .padding(.horizontal, 12)
    }
}

#Preview {
    ContactsView()
}
