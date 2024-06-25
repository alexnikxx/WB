//
//  Contact.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 19/06/24.
//

import SwiftUI

struct Contact: Hashable {
    var name: String
    var surname: String?
    var status: String
    var hasStories: Bool

    var fullName: String {
        if let surname {
            name + " " + surname
        } else {
            name
        }
    }

    var initials: String {
        if let surname {
            String(name.prefix(1) + surname.prefix(1))
        } else {
            String(name.prefix(1))
        }
    }

    var isOnline: Bool {
        status == "Online" ? true : false
    }

    var image: Image? {
        if let surname = surname, let uiImage = UIImage(named: name + " " + surname) {
            return Image(uiImage: uiImage)
        } else if let uiImage = UIImage(named: name) {
            return Image(uiImage: uiImage)
        } else {
            return nil
        }
    }
}

extension Contact {
    static var samples: [Contact] = [
        Contact(name: "Анастасия", surname: "Иванова", status: "Last seen yesterday", hasStories: false),
        Contact(name: "Петя", status: "Online", hasStories: false),
        Contact(name: "Маман", status: "Last seen 3 hours ago", hasStories: true),
        Contact(name: "Арбуз", surname: "Дыня", status: "Online", hasStories: false),
        Contact(name: "Иван", surname: "Иванов", status: "Online", hasStories: false),
        Contact(name: "Лиса", surname: "Алиса", status: "Last seen 30 minutes ago", hasStories: true)
    ]
}
