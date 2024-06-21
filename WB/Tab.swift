//
//  Tabs.swift
//  WB
//
//  Created by Aleksandra Nikiforova on 13/06/24.
//

import Foundation

enum Tab: CaseIterable {
    case contacts
    case chats
    case more

    var iconName: String {
        switch self {
        case .contacts:
            "contacts"
        case .chats:
            "chats"
        case .more:
            "more"
        }
    }
}
