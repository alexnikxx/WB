//
//  ContactsViewModel.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 20/06/24.
//

import SwiftUI

final class ContactsViewModel: ObservableObject {
    @Published var searchText = ""
    @Published var contacts = Contact.samples

    var filteredContacts: [Contact] {
        get {
            if searchText == "" {
                contacts
            } else {
                contacts.filter { contact in
                    contact.fullName.lowercased().contains(searchText.lowercased())
                }
            }
        }
    }

    func strokeForStories(colors: [Color], startPoint: UnitPoint, endPoint: UnitPoint) -> some View {
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 56, height: 56)
            .overlay(
                RoundedRectangle(cornerRadius: 18)
                    .inset(by: 1)
                    .stroke(
                        LinearGradient(
                            gradient: Gradient(
                                colors: colors
                            ),
                            startPoint: startPoint,
                            endPoint: endPoint
                        ),
                        lineWidth: 2
                    )
            )
    }
}
