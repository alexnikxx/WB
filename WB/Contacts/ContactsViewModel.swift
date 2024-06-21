//
//  ContactsViewModel.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 20/06/24.
//

import Foundation

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
}
