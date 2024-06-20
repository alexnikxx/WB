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
        ScrollView {
            VStack(spacing: 4) {
                ForEach(Contact.samples, id: \.self) { contact in
                    ContactCell(contact: contact)
                    Divider()
                        .padding(.horizontal)
                }
//                .searchable(text: $viewModel.searchText)
            }
        }
    }
}

#Preview {
    ContactsView()
}
